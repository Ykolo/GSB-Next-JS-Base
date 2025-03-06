import prisma from "@/lib/prisma";
import { NextResponse } from "next/server";

export const GET = async () => {
  try {
    const rapports = await prisma.rapport.findMany();
    return NextResponse.json(rapports, { status: 200 });
  } catch (error) {
    console.error(error);
    return NextResponse.json({ error: "An error occured" }, { status: 500 });
  }
};
