// Made with Blockbench 3.5.4
// Exported for Minecraft version 1.15
// Paste this class into your mod and generate all required imports


public class blaze extends EntityModel<Entity> {
	private final ModelRenderer upperBodyParts0;
	private final ModelRenderer upperBodyParts1;
	private final ModelRenderer upperBodyParts2;
	private final ModelRenderer upperBodyParts3;
	private final ModelRenderer upperBodyParts4;
	private final ModelRenderer upperBodyParts5;
	private final ModelRenderer upperBodyParts6;
	private final ModelRenderer upperBodyParts7;
	private final ModelRenderer upperBodyParts8;
	private final ModelRenderer upperBodyParts9;
	private final ModelRenderer upperBodyParts10;
	private final ModelRenderer upperBodyParts11;
	private final ModelRenderer head;

	public blaze() {
		textureWidth = 64;
		textureHeight = 32;

		upperBodyParts0 = new ModelRenderer(this);
		upperBodyParts0.setRotationPoint(8.0F, -2.0F, -3.0F);
		upperBodyParts0.setTextureOffset(0, 16).addBox(0.0F, 0.0F, 0.0F, 2.0F, 8.0F, 2.0F, 0.0F, false);

		upperBodyParts1 = new ModelRenderer(this);
		upperBodyParts1.setRotationPoint(-10.0F, -2.0F, 1.0F);
		upperBodyParts1.setTextureOffset(0, 16).addBox(0.0F, 0.0F, 0.0F, 2.0F, 8.0F, 2.0F, 0.0F, false);

		upperBodyParts2 = new ModelRenderer(this);
		upperBodyParts2.setRotationPoint(1.0F, -2.0F, 8.0F);
		upperBodyParts2.setTextureOffset(0, 16).addBox(0.0F, 0.0F, 0.0F, 2.0F, 8.0F, 2.0F, 0.0F, false);

		upperBodyParts3 = new ModelRenderer(this);
		upperBodyParts3.setRotationPoint(-3.0F, -2.0F, -10.0F);
		upperBodyParts3.setTextureOffset(0, 16).addBox(0.0F, 0.0F, 0.0F, 2.0F, 8.0F, 2.0F, 0.0F, false);

		upperBodyParts4 = new ModelRenderer(this);
		upperBodyParts4.setRotationPoint(5.0F, 6.0F, -1.0F);
		upperBodyParts4.setTextureOffset(0, 16).addBox(0.0F, 0.0F, 0.0F, 2.0F, 8.0F, 2.0F, 0.0F, false);

		upperBodyParts5 = new ModelRenderer(this);
		upperBodyParts5.setRotationPoint(-7.0F, 6.0F, -1.0F);
		upperBodyParts5.setTextureOffset(0, 16).addBox(0.0F, 0.0F, 0.0F, 2.0F, 8.0F, 2.0F, 0.0F, false);

		upperBodyParts6 = new ModelRenderer(this);
		upperBodyParts6.setRotationPoint(-1.0F, 6.0F, 5.0F);
		upperBodyParts6.setTextureOffset(0, 16).addBox(0.0F, 0.0F, 0.0F, 2.0F, 8.0F, 2.0F, 0.0F, false);

		upperBodyParts7 = new ModelRenderer(this);
		upperBodyParts7.setRotationPoint(-1.0F, 6.0F, -7.0F);
		upperBodyParts7.setTextureOffset(0, 16).addBox(0.0F, 0.0F, 0.0F, 2.0F, 8.0F, 2.0F, 0.0F, false);

		upperBodyParts8 = new ModelRenderer(this);
		upperBodyParts8.setRotationPoint(3.0F, 16.0F, 2.0F);
		upperBodyParts8.setTextureOffset(0, 16).addBox(0.0F, 0.0F, 0.0F, 2.0F, 8.0F, 2.0F, 0.0F, false);

		upperBodyParts9 = new ModelRenderer(this);
		upperBodyParts9.setRotationPoint(-5.0F, 16.0F, -4.0F);
		upperBodyParts9.setTextureOffset(0, 16).addBox(0.0F, 0.0F, 0.0F, 2.0F, 8.0F, 2.0F, 0.0F, false);

		upperBodyParts10 = new ModelRenderer(this);
		upperBodyParts10.setRotationPoint(-4.0F, 16.0F, 3.0F);
		upperBodyParts10.setTextureOffset(0, 16).addBox(0.0F, 0.0F, 0.0F, 2.0F, 8.0F, 2.0F, 0.0F, false);

		upperBodyParts11 = new ModelRenderer(this);
		upperBodyParts11.setRotationPoint(2.0F, 16.0F, -5.0F);
		upperBodyParts11.setTextureOffset(0, 16).addBox(0.0F, 0.0F, 0.0F, 2.0F, 8.0F, 2.0F, 0.0F, false);

		head = new ModelRenderer(this);
		head.setRotationPoint(0.0F, 0.0F, 0.0F);
		head.setTextureOffset(0, 0).addBox(-4.0F, -4.0F, -4.0F, 8.0F, 8.0F, 8.0F, 0.0F, false);
	}

	@Override
	public void setRotationAngles(Entity entity, float limbSwing, float limbSwingAmount, float ageInTicks, float netHeadYaw, float headPitch){
		//previously the render function, render code was moved to a method below
	}

	@Override
	public void render(MatrixStack matrixStack, IVertexBuilder buffer, int packedLight, int packedOverlay, float red, float green, float blue, float alpha){
		upperBodyParts0.render(matrixStack, buffer, packedLight, packedOverlay);
		upperBodyParts1.render(matrixStack, buffer, packedLight, packedOverlay);
		upperBodyParts2.render(matrixStack, buffer, packedLight, packedOverlay);
		upperBodyParts3.render(matrixStack, buffer, packedLight, packedOverlay);
		upperBodyParts4.render(matrixStack, buffer, packedLight, packedOverlay);
		upperBodyParts5.render(matrixStack, buffer, packedLight, packedOverlay);
		upperBodyParts6.render(matrixStack, buffer, packedLight, packedOverlay);
		upperBodyParts7.render(matrixStack, buffer, packedLight, packedOverlay);
		upperBodyParts8.render(matrixStack, buffer, packedLight, packedOverlay);
		upperBodyParts9.render(matrixStack, buffer, packedLight, packedOverlay);
		upperBodyParts10.render(matrixStack, buffer, packedLight, packedOverlay);
		upperBodyParts11.render(matrixStack, buffer, packedLight, packedOverlay);
		head.render(matrixStack, buffer, packedLight, packedOverlay);
	}

	public void setRotationAngle(ModelRenderer modelRenderer, float x, float y, float z) {
		modelRenderer.rotateAngleX = x;
		modelRenderer.rotateAngleY = y;
		modelRenderer.rotateAngleZ = z;
	}
}