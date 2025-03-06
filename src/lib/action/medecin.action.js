export const updateMedecin = async (id, adresse, tel, specialite) => {
  try {
    const response = await prisma.medecin.update({
      where: {
        id: parseInt(id),
      },
      data: {
        adresse,
        tel,
        specialitecomplementaire: specialite,
      },
    });
    return response;
  } catch (error) {
    console.error(error);
  }
};
