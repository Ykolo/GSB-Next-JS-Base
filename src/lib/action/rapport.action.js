"use server";

import prisma from "../prisma";

export const createRapport = async (
  idMedecin,
  idVisiteur,
  bilan,
  motif,
  date,
  medicaments
) => {
  try {
    const response = await prisma.rapport.create({
      data: {
        idMedecin,
        idVisiteur,
        bilan,
        motif,
        date,
      },
    });
    const idRapport = response.id;
    if (medicaments.length > 0) {
      medicaments.map(async (medicament) => {
        await prisma.offrir.create({
          data: {
            idRapport: parseInt(idRapport),
            idMedicament: String(medicament.idMedicament),
            quantite: medicament.qte,
          },
        });
      });
    }
    return response;
  } catch (error) {
    console.error(error);
  }
};

export const updateRapport = async (id, motif, bilan) => {
  try {
    const response = await prisma.rapport.update({
      where: {
        id: parseInt(id),
      },
      data: {
        motif,
        bilan,
      },
    });
    return response;
  } catch (error) {
    console.error(error);
  }
};
