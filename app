import React, { useState } from "react"; import { Card, CardContent } from "@/components/ui/card"; import { Button } from "@/components/ui/button"; import { Input } from "@/components/ui/input";

export default function NetWorthTracker() { const [assets, setAssets] = useState([]); const [liabilities, setLiabilities] = useState([]); const [newItem, setNewItem] = useState({ type: "asset", name: "", value: "" });

const addItem = () => { if (newItem.name && newItem.value) { if (newItem.type === "asset") { setAssets([...assets, { name: newItem.name, value: parseFloat(newItem.value) }]); } else { setLiabilities([...liabilities, { name: newItem.name, value: parseFloat(newItem.value) }]); } setNewItem({ type: "asset", name: "", value: "" }); } };

const calculateNetWorth = () => { const totalAssets = assets.reduce((sum, item) => sum + item.value, 0); const totalLiabilities = liabilities.reduce((sum, item) => sum + item.value, 0); return totalAssets - totalLiabilities; };

return ( <div className="p-4 max-w-md mx-auto"> <h2 className="text-xl font-bold mb-4">Net Worth Tracker</h2> <Card className="mb-4"> <CardContent> <h3 className="font-semibold">Add Item</h3> <select value={newItem.type} onChange={(e) => setNewItem({ ...newItem, type: e.target.value })} className="block w-full mb-2" > <option value="asset">Asset</option> <option value="liability">Liability</option> </select> <Input type="text" placeholder="Name" value={newItem.name} onChange={(e) => setNewItem({ ...newItem, name: e.target.value })} /> <Input type="number" placeholder="Value" value={newItem.value} onChange={(e) => setNewItem({ ...newItem, value: e.target.value })} /> <Button onClick={addItem} className="mt-2">Add</Button> </CardContent> </Card> <Card> <CardContent> <h3 className="font-semibold">Summary</h3> <p>Net Worth: <strong>${calculateNetWorth().toLocaleString()}</strong></p> </CardContent> </Card> </div> ); }

