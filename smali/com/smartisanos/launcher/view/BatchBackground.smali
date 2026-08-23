.class public Lcom/smartisanos/launcher/view/BatchBackground;
.super Lcom/smartisanos/smengine/SceneNode;
.source "BatchBackground.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/launcher/view/BatchBackground$PageException;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BatchShadow"


# instance fields
.field protected GAUSSIAN_BACKGROUND_CELL_HEIGHT_DELTA:I

.field protected GAUSSIAN_BACKGROUND_CELL_WIDTH_DELTA:I

.field protected mCellTextureCoordArray:[F

.field protected mFixedScale:F

.field protected mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

.field private mMatArray16:[Lcom/smartisanos/smengine/math/Matrix4f;

.field private mMatArray9:[Lcom/smartisanos/smengine/math/Matrix4f;

.field protected mMeshTexTureCoordArray:[F

.field private mModularColorArray16:[Lcom/smartisanos/smengine/math/Vector4f;

.field private mModularColorArray9:[Lcom/smartisanos/smengine/math/Vector4f;

.field private mMoveToOutOfScreenMatrix:Lcom/smartisanos/smengine/math/Matrix4f;

.field protected mNeedInvisibleList:[Z

.field protected mPos:Lcom/smartisanos/smengine/math/Vector3f;

.field protected mSize:Lcom/smartisanos/smengine/math/Vector3f;

.field protected mUseSelfColor:Z

.field protected mUseSelfZ:Z

.field private mZ:F


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x4

    const/4 v2, 0x0

    const/16 v4, 0x10

    const/16 v3, 0x9

    .line 61
    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/SceneNode;-><init>(Ljava/lang/String;)V

    .line 30
    new-array v1, v3, [Lcom/smartisanos/smengine/math/Matrix4f;

    iput-object v1, p0, Lcom/smartisanos/launcher/view/BatchBackground;->mMatArray9:[Lcom/smartisanos/smengine/math/Matrix4f;

    .line 31
    new-array v1, v4, [Lcom/smartisanos/smengine/math/Matrix4f;

    iput-object v1, p0, Lcom/smartisanos/launcher/view/BatchBackground;->mMatArray16:[Lcom/smartisanos/smengine/math/Matrix4f;

    .line 33
    new-array v1, v3, [Lcom/smartisanos/smengine/math/Vector4f;

    iput-object v1, p0, Lcom/smartisanos/launcher/view/BatchBackground;->mModularColorArray9:[Lcom/smartisanos/smengine/math/Vector4f;

    .line 34
    new-array v1, v4, [Lcom/smartisanos/smengine/math/Vector4f;

    iput-object v1, p0, Lcom/smartisanos/launcher/view/BatchBackground;->mModularColorArray16:[Lcom/smartisanos/smengine/math/Vector4f;

    .line 37
    const/4 v1, 0x0

    iput v1, p0, Lcom/smartisanos/launcher/view/BatchBackground;->mZ:F

    .line 38
    new-instance v1, Lcom/smartisanos/smengine/math/Matrix4f;

    invoke-direct {v1}, Lcom/smartisanos/smengine/math/Matrix4f;-><init>()V

    iput-object v1, p0, Lcom/smartisanos/launcher/view/BatchBackground;->mMoveToOutOfScreenMatrix:Lcom/smartisanos/smengine/math/Matrix4f;

    .line 41
    iput-boolean v2, p0, Lcom/smartisanos/launcher/view/BatchBackground;->mUseSelfColor:Z

    .line 42
    iput-boolean v2, p0, Lcom/smartisanos/launcher/view/BatchBackground;->mUseSelfZ:Z

    .line 43
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/smartisanos/launcher/view/BatchBackground;->mFixedScale:F

    .line 45
    new-instance v1, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v1}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    iput-object v1, p0, Lcom/smartisanos/launcher/view/BatchBackground;->mSize:Lcom/smartisanos/smengine/math/Vector3f;

    .line 46
    new-instance v1, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v1}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    iput-object v1, p0, Lcom/smartisanos/launcher/view/BatchBackground;->mPos:Lcom/smartisanos/smengine/math/Vector3f;

    .line 48
    const/16 v1, 0x8

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/smartisanos/launcher/view/BatchBackground;->mCellTextureCoordArray:[F

    .line 50
    iput v5, p0, Lcom/smartisanos/launcher/view/BatchBackground;->GAUSSIAN_BACKGROUND_CELL_WIDTH_DELTA:I

    .line 51
    iput v5, p0, Lcom/smartisanos/launcher/view/BatchBackground;->GAUSSIAN_BACKGROUND_CELL_HEIGHT_DELTA:I

    .line 62
    invoke-static {}, Lcom/smartisanos/launcher/data/Constants;->getPropertyByStyle()Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v1

    iput-object v1, p0, Lcom/smartisanos/launcher/view/BatchBackground;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    .line 63
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 64
    iget-object v1, p0, Lcom/smartisanos/launcher/view/BatchBackground;->mMatArray9:[Lcom/smartisanos/smengine/math/Matrix4f;

    new-instance v2, Lcom/smartisanos/smengine/math/Matrix4f;

    invoke-direct {v2}, Lcom/smartisanos/smengine/math/Matrix4f;-><init>()V

    aput-object v2, v1, v0

    .line 65
    iget-object v1, p0, Lcom/smartisanos/launcher/view/BatchBackground;->mModularColorArray9:[Lcom/smartisanos/smengine/math/Vector4f;

    new-instance v2, Lcom/smartisanos/smengine/math/Vector4f;

    invoke-direct {v2}, Lcom/smartisanos/smengine/math/Vector4f;-><init>()V

    aput-object v2, v1, v0

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 67
    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_1

    .line 68
    iget-object v1, p0, Lcom/smartisanos/launcher/view/BatchBackground;->mMatArray16:[Lcom/smartisanos/smengine/math/Matrix4f;

    new-instance v2, Lcom/smartisanos/smengine/math/Matrix4f;

    invoke-direct {v2}, Lcom/smartisanos/smengine/math/Matrix4f;-><init>()V

    aput-object v2, v1, v0

    .line 69
    iget-object v1, p0, Lcom/smartisanos/launcher/view/BatchBackground;->mModularColorArray16:[Lcom/smartisanos/smengine/math/Vector4f;

    new-instance v2, Lcom/smartisanos/smengine/math/Vector4f;

    invoke-direct {v2}, Lcom/smartisanos/smengine/math/Vector4f;-><init>()V

    aput-object v2, v1, v0

    .line 67
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 71
    :cond_1
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/BatchBackground;->createBatch()V

    .line 72
    return-void
.end method

.method private clearMatrixArray([Lcom/smartisanos/smengine/math/Matrix4f;)V
    .locals 2
    .param p1, "matArray"    # [Lcom/smartisanos/smengine/math/Matrix4f;

    .prologue
    .line 252
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 253
    aget-object v1, p1, v0

    invoke-virtual {v1}, Lcom/smartisanos/smengine/math/Matrix4f;->loadIdentity()V

    .line 252
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 255
    :cond_0
    return-void
.end method

.method private createBatch()V
    .locals 1

    .prologue
    .line 226
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/BatchBackground;->createBatchShadowMaterial()V

    .line 227
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/BatchBackground;->createBatchShadowMesh()V

    .line 228
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/BatchBackground;->setRenderQueue(I)V

    .line 229
    return-void
.end method

.method private createBatchShadowMesh()V
    .locals 31

    .prologue
    .line 125
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/BatchBackground;->getMesh()Lcom/smartisanos/smengine/Mesh;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 223
    :goto_0
    return-void

    .line 128
    :cond_0
    invoke-static {}, Lcom/smartisanos/smengine/World;->uid()J

    move-result-wide v28

    .line 129
    .local v28, "worldIndex":J
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/smengine/World;->getMeshManager()Lcom/smartisanos/smengine/MeshManager;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "BACH_BACKGROUND_MESH_BATCH_9_CELLS"

    move-object/from16 v0, v30

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, v28

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/smartisanos/smengine/MeshManager;->getMesh(Ljava/lang/String;)Lcom/smartisanos/smengine/Mesh;

    move-result-object v2

    .line 130
    .local v2, "mesh":Lcom/smartisanos/smengine/Mesh;
    if-nez v2, :cond_9

    .line 131
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/smartisanos/launcher/view/BatchBackground;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v10, v6, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_col_num:I

    .line 132
    .local v10, "colNum":I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/smartisanos/launcher/view/BatchBackground;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v0, v6, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_row_num:I

    move/from16 v21, v0

    .line 134
    .local v21, "rowNum":I
    sget v6, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static {v6}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v16

    .line 135
    .local v16, "lp":Lcom/smartisanos/launcher/data/LayoutProperty;
    move-object/from16 v0, v16

    iget v6, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/smartisanos/launcher/view/BatchBackground;->GAUSSIAN_BACKGROUND_CELL_WIDTH_DELTA:I

    int-to-float v7, v7

    add-float v9, v6, v7

    .line 136
    .local v9, "cellShadowWidth":F
    move-object/from16 v0, v16

    iget v6, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/smartisanos/launcher/view/BatchBackground;->GAUSSIAN_BACKGROUND_CELL_HEIGHT_DELTA:I

    int-to-float v7, v7

    add-float v8, v6, v7

    .line 137
    .local v8, "cellShadowHeight":F
    mul-int v6, v10, v21

    mul-int/lit8 v20, v6, 0x4

    .line 138
    .local v20, "pointNum":I
    mul-int/lit8 v6, v20, 0x3

    new-array v3, v6, [F

    .line 139
    .local v3, "points":[F
    mul-int/lit8 v6, v20, 0x2

    new-array v4, v6, [F

    .line 140
    .local v4, "texPoints":[F
    move/from16 v0, v20

    new-array v0, v0, [F

    move-object/from16 v17, v0

    .line 141
    .local v17, "matIndexArray":[F
    const/4 v14, 0x0

    .line 142
    .local v14, "k":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    move/from16 v0, v21

    if-ge v11, v0, :cond_2

    .line 143
    const/4 v13, 0x0

    .local v13, "j":I
    move v15, v14

    .end local v14    # "k":I
    .local v15, "k":I
    :goto_2
    if-ge v13, v10, :cond_1

    .line 144
    invoke-static {v11, v13}, Lcom/smartisanos/launcher/view/Page;->getCellIndex(II)I

    move-result v12

    .line 145
    .local v12, "index":I
    sget-object v6, Lcom/smartisanos/launcher/data/Constants;->pageCellCenterPoints:[Lcom/smartisanos/smengine/math/Vector3f;

    aget-object v23, v6, v12

    .line 147
    .local v23, "v":Lcom/smartisanos/smengine/math/Vector3f;
    new-instance v19, Lcom/smartisanos/smengine/math/Vector3f;

    neg-float v6, v9

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    neg-float v7, v8

    const/high16 v30, 0x40000000    # 2.0f

    div-float v7, v7, v30

    const/16 v30, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v30

    invoke-direct {v0, v6, v7, v1}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    .line 148
    .local v19, "minPoint":Lcom/smartisanos/smengine/math/Vector3f;
    new-instance v18, Lcom/smartisanos/smengine/math/Vector3f;

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v9, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float v7, v8, v7

    const/16 v30, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v30

    invoke-direct {v0, v6, v7, v1}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    .line 149
    .local v18, "maxPoint":Lcom/smartisanos/smengine/math/Vector3f;
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "k":I
    .restart local v14    # "k":I
    move-object/from16 v0, v19

    iget v6, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    aput v6, v3, v15

    .line 150
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "k":I
    .restart local v15    # "k":I
    move-object/from16 v0, v19

    iget v6, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    aput v6, v3, v14

    .line 151
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "k":I
    .restart local v14    # "k":I
    move-object/from16 v0, p0

    iget v6, v0, Lcom/smartisanos/launcher/view/BatchBackground;->mZ:F

    aput v6, v3, v15

    .line 153
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "k":I
    .restart local v15    # "k":I
    move-object/from16 v0, v18

    iget v6, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    aput v6, v3, v14

    .line 154
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "k":I
    .restart local v14    # "k":I
    move-object/from16 v0, v19

    iget v6, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    aput v6, v3, v15

    .line 155
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "k":I
    .restart local v15    # "k":I
    move-object/from16 v0, p0

    iget v6, v0, Lcom/smartisanos/launcher/view/BatchBackground;->mZ:F

    aput v6, v3, v14

    .line 157
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "k":I
    .restart local v14    # "k":I
    move-object/from16 v0, v18

    iget v6, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    aput v6, v3, v15

    .line 158
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "k":I
    .restart local v15    # "k":I
    move-object/from16 v0, v18

    iget v6, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    aput v6, v3, v14

    .line 159
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "k":I
    .restart local v14    # "k":I
    move-object/from16 v0, p0

    iget v6, v0, Lcom/smartisanos/launcher/view/BatchBackground;->mZ:F

    aput v6, v3, v15

    .line 161
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "k":I
    .restart local v15    # "k":I
    move-object/from16 v0, v19

    iget v6, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    aput v6, v3, v14

    .line 162
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "k":I
    .restart local v14    # "k":I
    move-object/from16 v0, v18

    iget v6, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    aput v6, v3, v15

    .line 163
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "k":I
    .restart local v15    # "k":I
    move-object/from16 v0, p0

    iget v6, v0, Lcom/smartisanos/launcher/view/BatchBackground;->mZ:F

    aput v6, v3, v14

    .line 143
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2

    .line 142
    .end local v12    # "index":I
    .end local v18    # "maxPoint":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v19    # "minPoint":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v23    # "v":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_1
    add-int/lit8 v11, v11, 0x1

    move v14, v15

    .end local v15    # "k":I
    .restart local v14    # "k":I
    goto/16 :goto_1

    .line 167
    .end local v13    # "j":I
    :cond_2
    const/4 v14, 0x0

    .line 168
    const/4 v11, 0x0

    :goto_3
    move/from16 v0, v21

    if-ge v11, v0, :cond_4

    .line 169
    const/4 v13, 0x0

    .restart local v13    # "j":I
    move v15, v14

    .end local v14    # "k":I
    .restart local v15    # "k":I
    :goto_4
    if-ge v13, v10, :cond_3

    .line 170
    new-instance v22, Lcom/smartisanos/smengine/RenderTarget$UV;

    invoke-direct/range {v22 .. v22}, Lcom/smartisanos/smengine/RenderTarget$UV;-><init>()V

    .line 171
    .local v22, "uv":Lcom/smartisanos/smengine/RenderTarget$UV;
    const/4 v6, 0x2

    new-array v6, v6, [F

    move-object/from16 v0, v22

    iput-object v6, v0, Lcom/smartisanos/smengine/RenderTarget$UV;->u:[F

    .line 172
    const/4 v6, 0x2

    new-array v6, v6, [F

    move-object/from16 v0, v22

    iput-object v6, v0, Lcom/smartisanos/smengine/RenderTarget$UV;->v:[F

    .line 173
    move-object/from16 v0, v22

    iget-object v6, v0, Lcom/smartisanos/smengine/RenderTarget$UV;->u:[F

    const/4 v7, 0x0

    const/high16 v30, 0x3f800000    # 1.0f

    aput v30, v6, v7

    .line 174
    move-object/from16 v0, v22

    iget-object v6, v0, Lcom/smartisanos/smengine/RenderTarget$UV;->u:[F

    const/4 v7, 0x1

    const/16 v30, 0x0

    aput v30, v6, v7

    .line 175
    move-object/from16 v0, v22

    iget-object v6, v0, Lcom/smartisanos/smengine/RenderTarget$UV;->v:[F

    const/4 v7, 0x0

    const/high16 v30, 0x3f800000    # 1.0f

    aput v30, v6, v7

    .line 176
    move-object/from16 v0, v22

    iget-object v6, v0, Lcom/smartisanos/smengine/RenderTarget$UV;->v:[F

    const/4 v7, 0x1

    const/16 v30, 0x0

    aput v30, v6, v7

    .line 178
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "k":I
    .restart local v14    # "k":I
    move-object/from16 v0, v22

    iget-object v6, v0, Lcom/smartisanos/smengine/RenderTarget$UV;->u:[F

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v4, v15

    .line 179
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "k":I
    .restart local v15    # "k":I
    move-object/from16 v0, v22

    iget-object v6, v0, Lcom/smartisanos/smengine/RenderTarget$UV;->v:[F

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v4, v14

    .line 181
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "k":I
    .restart local v14    # "k":I
    move-object/from16 v0, v22

    iget-object v6, v0, Lcom/smartisanos/smengine/RenderTarget$UV;->u:[F

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v4, v15

    .line 182
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "k":I
    .restart local v15    # "k":I
    move-object/from16 v0, v22

    iget-object v6, v0, Lcom/smartisanos/smengine/RenderTarget$UV;->v:[F

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v4, v14

    .line 184
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "k":I
    .restart local v14    # "k":I
    move-object/from16 v0, v22

    iget-object v6, v0, Lcom/smartisanos/smengine/RenderTarget$UV;->u:[F

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v4, v15

    .line 185
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "k":I
    .restart local v15    # "k":I
    move-object/from16 v0, v22

    iget-object v6, v0, Lcom/smartisanos/smengine/RenderTarget$UV;->v:[F

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v4, v14

    .line 187
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "k":I
    .restart local v14    # "k":I
    move-object/from16 v0, v22

    iget-object v6, v0, Lcom/smartisanos/smengine/RenderTarget$UV;->u:[F

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v4, v15

    .line 188
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "k":I
    .restart local v15    # "k":I
    move-object/from16 v0, v22

    iget-object v6, v0, Lcom/smartisanos/smengine/RenderTarget$UV;->v:[F

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v4, v14

    .line 169
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_4

    .line 168
    .end local v22    # "uv":Lcom/smartisanos/smengine/RenderTarget$UV;
    :cond_3
    add-int/lit8 v11, v11, 0x1

    move v14, v15

    .end local v15    # "k":I
    .restart local v14    # "k":I
    goto/16 :goto_3

    .line 191
    .end local v13    # "j":I
    :cond_4
    const/4 v14, 0x0

    .line 192
    const/4 v11, 0x0

    :goto_5
    move/from16 v0, v21

    if-ge v11, v0, :cond_6

    .line 193
    const/4 v13, 0x0

    .restart local v13    # "j":I
    move v15, v14

    .end local v14    # "k":I
    .restart local v15    # "k":I
    :goto_6
    if-ge v13, v10, :cond_5

    .line 194
    invoke-static {v11, v13}, Lcom/smartisanos/launcher/view/Page;->getCellIndex(II)I

    move-result v12

    .line 195
    .restart local v12    # "index":I
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "k":I
    .restart local v14    # "k":I
    int-to-float v6, v12

    aput v6, v17, v15

    .line 196
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "k":I
    .restart local v15    # "k":I
    int-to-float v6, v12

    aput v6, v17, v14

    .line 197
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "k":I
    .restart local v14    # "k":I
    int-to-float v6, v12

    aput v6, v17, v15

    .line 198
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "k":I
    .restart local v15    # "k":I
    int-to-float v6, v12

    aput v6, v17, v14

    .line 193
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 192
    .end local v12    # "index":I
    :cond_5
    add-int/lit8 v11, v11, 0x1

    move v14, v15

    .end local v15    # "k":I
    .restart local v14    # "k":I
    goto :goto_5

    .line 201
    .end local v13    # "j":I
    :cond_6
    mul-int v6, v10, v21

    mul-int/lit8 v6, v6, 0x2

    mul-int/lit8 v6, v6, 0x3

    new-array v5, v6, [S

    .line 202
    .local v5, "faces":[S
    const/4 v14, 0x0

    .line 203
    const/4 v11, 0x0

    :goto_7
    move/from16 v0, v21

    if-ge v11, v0, :cond_8

    .line 204
    const/4 v13, 0x0

    .restart local v13    # "j":I
    move v15, v14

    .end local v14    # "k":I
    .restart local v15    # "k":I
    :goto_8
    if-ge v13, v10, :cond_7

    .line 205
    mul-int v6, v11, v10

    mul-int/lit8 v6, v6, 0x4

    mul-int/lit8 v7, v13, 0x4

    add-int/2addr v6, v7

    int-to-short v0, v6

    move/from16 v24, v0

    .line 206
    .local v24, "v0":S
    add-int/lit8 v6, v24, 0x1

    int-to-short v0, v6

    move/from16 v25, v0

    .line 207
    .local v25, "v1":S
    add-int/lit8 v6, v25, 0x1

    int-to-short v0, v6

    move/from16 v26, v0

    .line 208
    .local v26, "v2":S
    add-int/lit8 v6, v26, 0x1

    int-to-short v0, v6

    move/from16 v27, v0

    .line 209
    .local v27, "v3":S
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "k":I
    .restart local v14    # "k":I
    aput-short v24, v5, v15

    .line 210
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "k":I
    .restart local v15    # "k":I
    aput-short v25, v5, v14

    .line 211
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "k":I
    .restart local v14    # "k":I
    aput-short v26, v5, v15

    .line 212
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "k":I
    .restart local v15    # "k":I
    aput-short v24, v5, v14

    .line 213
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "k":I
    .restart local v14    # "k":I
    aput-short v26, v5, v15

    .line 214
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "k":I
    .restart local v15    # "k":I
    aput-short v27, v5, v14

    .line 204
    add-int/lit8 v13, v13, 0x1

    goto :goto_8

    .line 203
    .end local v24    # "v0":S
    .end local v25    # "v1":S
    .end local v26    # "v2":S
    .end local v27    # "v3":S
    :cond_7
    add-int/lit8 v11, v11, 0x1

    move v14, v15

    .end local v15    # "k":I
    .restart local v14    # "k":I
    goto :goto_7

    .line 217
    .end local v13    # "j":I
    :cond_8
    new-instance v2, Lcom/smartisanos/smengine/Mesh;

    .end local v2    # "mesh":Lcom/smartisanos/smengine/Mesh;
    invoke-direct {v2}, Lcom/smartisanos/smengine/Mesh;-><init>()V

    .line 218
    .restart local v2    # "mesh":Lcom/smartisanos/smengine/Mesh;
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/smartisanos/smengine/Mesh;->create([F[F[S[FZ)V

    .line 219
    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/smartisanos/smengine/Mesh;->setMatIndexArray([F)V

    .line 220
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/smengine/World;->getMeshManager()Lcom/smartisanos/smengine/MeshManager;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "BACH_BACKGROUND_MESH_BATCH_9_CELLS"

    move-object/from16 v0, v30

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, v28

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v2}, Lcom/smartisanos/smengine/MeshManager;->addMesh(Ljava/lang/String;Lcom/smartisanos/smengine/Mesh;)Lcom/smartisanos/smengine/Mesh;

    .line 222
    .end local v3    # "points":[F
    .end local v4    # "texPoints":[F
    .end local v5    # "faces":[S
    .end local v8    # "cellShadowHeight":F
    .end local v9    # "cellShadowWidth":F
    .end local v10    # "colNum":I
    .end local v11    # "i":I
    .end local v14    # "k":I
    .end local v16    # "lp":Lcom/smartisanos/launcher/data/LayoutProperty;
    .end local v17    # "matIndexArray":[F
    .end local v20    # "pointNum":I
    .end local v21    # "rowNum":I
    :cond_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/BatchBackground;->setMesh(Lcom/smartisanos/smengine/Mesh;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public addMeshToRenderUnit(Lcom/smartisanos/smengine/RenderManager$RenderUnit;)V
    .locals 7
    .param p1, "ru"    # Lcom/smartisanos/smengine/RenderManager$RenderUnit;

    .prologue
    const/4 v6, 0x0

    .line 415
    invoke-super {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->addMeshToRenderUnit(Lcom/smartisanos/smengine/RenderManager$RenderUnit;)V

    .line 416
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/BatchBackground;->getMesh()Lcom/smartisanos/smengine/Mesh;

    move-result-object v5

    if-nez v5, :cond_0

    .line 435
    :goto_0
    return-void

    .line 419
    :cond_0
    iget-object v5, p0, Lcom/smartisanos/launcher/view/BatchBackground;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v0, v5, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_col_num:I

    .line 420
    .local v0, "colNum":I
    iget-object v5, p0, Lcom/smartisanos/launcher/view/BatchBackground;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v4, v5, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_row_num:I

    .line 421
    .local v4, "rowNum":I
    invoke-virtual {p0, v4, v0}, Lcom/smartisanos/launcher/view/BatchBackground;->getCurrentMatArray(II)[Lcom/smartisanos/smengine/math/Matrix4f;

    move-result-object v3

    .line 422
    .local v3, "matArray":[Lcom/smartisanos/smengine/math/Matrix4f;
    invoke-virtual {p0, v4, v0}, Lcom/smartisanos/launcher/view/BatchBackground;->getCurrentModularColorArray(II)[Lcom/smartisanos/smengine/math/Vector4f;

    move-result-object v1

    .line 423
    .local v1, "colorArray":[Lcom/smartisanos/smengine/math/Vector4f;
    invoke-direct {p0, v3}, Lcom/smartisanos/launcher/view/BatchBackground;->clearMatrixArray([Lcom/smartisanos/smengine/math/Matrix4f;)V

    .line 424
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v5, v1

    if-ge v2, v5, :cond_1

    .line 425
    aget-object v5, v1, v2

    invoke-virtual {v5, v6, v6, v6, v6}, Lcom/smartisanos/smengine/math/Vector4f;->set(FFFF)Lcom/smartisanos/smengine/math/Vector4f;

    .line 424
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 431
    :cond_1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/BatchBackground;->getMatColorArrayForBatchShadow()V

    .line 433
    invoke-virtual {p1, v3}, Lcom/smartisanos/smengine/RenderManager$RenderUnit;->setMatArray([Lcom/smartisanos/smengine/math/Matrix4f;)V

    .line 434
    invoke-virtual {p1, v1}, Lcom/smartisanos/smengine/RenderManager$RenderUnit;->setColorArray([Lcom/smartisanos/smengine/math/Vector4f;)V

    goto :goto_0
.end method

.method public clear(Z)V
    .locals 2
    .param p1, "cleanHardwareResource"    # Z

    .prologue
    .line 575
    invoke-super {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->clear(Z)V

    .line 577
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/BatchBackground;->getMesh()Lcom/smartisanos/smengine/Mesh;

    move-result-object v0

    .line 578
    .local v0, "m":Lcom/smartisanos/smengine/Mesh;
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/World;->getMeshManager()Lcom/smartisanos/smengine/MeshManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/MeshManager;->removeMesh(Lcom/smartisanos/smengine/Mesh;)V

    .line 579
    return-void
.end method

.method protected createBatchShadowMaterial()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 74
    invoke-static {}, Lcom/smartisanos/launcher/data/Constants;->getPropertyByStyle()Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v2

    .line 76
    .local v2, "prop":Lcom/smartisanos/launcher/data/LayoutProperty;
    const/4 v1, 0x0

    .line 77
    .local v1, "mode":Ljava/lang/String;
    iget v4, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_row_num:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    .line 78
    const-string v1, "TextureBatch9PreColorMaterial"

    .line 79
    iget-object v4, p0, Lcom/smartisanos/launcher/view/BatchBackground;->mCellTextureCoordArray:[F

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x9

    new-array v4, v4, [F

    iput-object v4, p0, Lcom/smartisanos/launcher/view/BatchBackground;->mMeshTexTureCoordArray:[F

    .line 80
    const/16 v4, 0x9

    new-array v4, v4, [Z

    iput-object v4, p0, Lcom/smartisanos/launcher/view/BatchBackground;->mNeedInvisibleList:[Z

    .line 87
    :cond_0
    :goto_0
    invoke-static {v1}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v0

    .line 89
    .local v0, "material":Lcom/smartisanos/smengine/mymaterial/Material;
    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/BatchBackground;->setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 90
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/BatchBackground;->updatePreColorMaskColor()V

    .line 92
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/BatchBackground;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v3

    .line 93
    .local v3, "rs":Lcom/smartisanos/smengine/RenderState;
    invoke-virtual {v3, v6}, Lcom/smartisanos/smengine/RenderState;->setIsEnableBlend(Z)V

    .line 94
    invoke-virtual {v3, v7}, Lcom/smartisanos/smengine/RenderState;->setIsPolygonOffset(Z)V

    .line 95
    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, -0x40000000    # -2.0f

    invoke-virtual {v3, v4, v5}, Lcom/smartisanos/smengine/RenderState;->setPolygonOffsetFactorUnits(FF)V

    .line 96
    invoke-virtual {v3, v6}, Lcom/smartisanos/smengine/RenderState;->setIsUseVBO(Z)V

    .line 98
    invoke-virtual {v3, v7}, Lcom/smartisanos/smengine/RenderState;->setIsEnableDepthTest(Z)V

    .line 100
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/RenderState;->setBlendMode(I)V

    .line 110
    const-string v4, "t_blur_background"

    invoke-virtual {p0, v4}, Lcom/smartisanos/launcher/view/BatchBackground;->setImageName(Ljava/lang/String;)V

    .line 112
    return-void

    .line 81
    .end local v0    # "material":Lcom/smartisanos/smengine/mymaterial/Material;
    .end local v3    # "rs":Lcom/smartisanos/smengine/RenderState;
    :cond_1
    iget v4, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_row_num:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    .line 82
    const-string v1, "TextureBatch16PreColorMaterial"

    .line 83
    iget-object v4, p0, Lcom/smartisanos/launcher/view/BatchBackground;->mCellTextureCoordArray:[F

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x10

    new-array v4, v4, [F

    iput-object v4, p0, Lcom/smartisanos/launcher/view/BatchBackground;->mMeshTexTureCoordArray:[F

    .line 84
    const/16 v4, 0x10

    new-array v4, v4, [Z

    iput-object v4, p0, Lcom/smartisanos/launcher/view/BatchBackground;->mNeedInvisibleList:[Z

    goto :goto_0
.end method

.method public draw(Lcom/smartisanos/smengine/Camera;)V
    .locals 1
    .param p1, "camera"    # Lcom/smartisanos/smengine/Camera;

    .prologue
    .line 563
    invoke-static {}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->getInstance()Lcom/smartisanos/launcher/theme/ChangeThemeHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->isChangeThemeAnimating()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 571
    :cond_0
    :goto_0
    return-void

    .line 566
    :cond_1
    invoke-super {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->cull(Lcom/smartisanos/smengine/Camera;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 570
    invoke-super {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->draw(Lcom/smartisanos/smengine/Camera;)V

    goto :goto_0
.end method

.method public getCurrentMatArray(II)[Lcom/smartisanos/smengine/math/Matrix4f;
    .locals 4
    .param p1, "rowNum"    # I
    .param p2, "colNum"    # I

    .prologue
    .line 242
    mul-int v0, p1, p2

    .line 243
    .local v0, "totalNum":I
    sparse-switch v0, :sswitch_data_0

    .line 249
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown row num and col num : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 245
    :sswitch_0
    iget-object v1, p0, Lcom/smartisanos/launcher/view/BatchBackground;->mMatArray9:[Lcom/smartisanos/smengine/math/Matrix4f;

    .line 247
    :goto_0
    return-object v1

    :sswitch_1
    iget-object v1, p0, Lcom/smartisanos/launcher/view/BatchBackground;->mMatArray16:[Lcom/smartisanos/smengine/math/Matrix4f;

    goto :goto_0

    .line 243
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0x10 -> :sswitch_1
    .end sparse-switch
.end method

.method public getCurrentModularColorArray(II)[Lcom/smartisanos/smengine/math/Vector4f;
    .locals 4
    .param p1, "rowNum"    # I
    .param p2, "colNum"    # I

    .prologue
    .line 232
    mul-int v0, p1, p2

    .line 233
    .local v0, "totalNum":I
    sparse-switch v0, :sswitch_data_0

    .line 239
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown row num and col num : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 235
    :sswitch_0
    iget-object v1, p0, Lcom/smartisanos/launcher/view/BatchBackground;->mModularColorArray9:[Lcom/smartisanos/smengine/math/Vector4f;

    .line 237
    :goto_0
    return-object v1

    :sswitch_1
    iget-object v1, p0, Lcom/smartisanos/launcher/view/BatchBackground;->mModularColorArray16:[Lcom/smartisanos/smengine/math/Vector4f;

    goto :goto_0

    .line 233
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0x10 -> :sswitch_1
    .end sparse-switch
.end method

.method public getMatColorArrayForBatchShadow()V
    .locals 32

    .prologue
    .line 438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/BatchBackground;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v4, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_col_num:I

    .line 439
    .local v4, "colNum":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/BatchBackground;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_row_num:I

    move/from16 v22, v0

    .line 440
    .local v22, "rowNum":I
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1, v4}, Lcom/smartisanos/launcher/view/BatchBackground;->getCurrentMatArray(II)[Lcom/smartisanos/smengine/math/Matrix4f;

    move-result-object v12

    .line 441
    .local v12, "matArray":[Lcom/smartisanos/smengine/math/Matrix4f;
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1, v4}, Lcom/smartisanos/launcher/view/BatchBackground;->getCurrentModularColorArray(II)[Lcom/smartisanos/smengine/math/Vector4f;

    move-result-object v5

    .line 442
    .local v5, "colorArray":[Lcom/smartisanos/smengine/math/Vector4f;
    const/4 v9, 0x0

    .line 443
    .local v9, "k":I
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/BatchBackground;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v20

    check-cast v20, Lcom/smartisanos/launcher/view/Page;

    .line 444
    .local v20, "parentPage":Lcom/smartisanos/launcher/view/Page;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-virtual/range {v20 .. v20}, Lcom/smartisanos/launcher/view/Page;->getChildCount()I

    move-result v27

    move/from16 v0, v27

    if-ge v6, v0, :cond_8

    .line 445
    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Lcom/smartisanos/launcher/view/Page;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v25

    .line 446
    .local v25, "sn":Lcom/smartisanos/smengine/SceneNode;
    move-object/from16 v0, v25

    instance-of v0, v0, Lcom/smartisanos/launcher/view/Cell;

    move/from16 v27, v0

    if-eqz v27, :cond_3

    move-object/from16 v21, v25

    .line 447
    check-cast v21, Lcom/smartisanos/launcher/view/Cell;

    .line 448
    .local v21, "pc":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual/range {v25 .. v25}, Lcom/smartisanos/smengine/SceneNode;->getWorldMatrix()Lcom/smartisanos/smengine/math/Matrix4f;

    move-result-object v10

    .line 449
    .local v10, "m":Lcom/smartisanos/smengine/math/Matrix4f;
    if-nez v10, :cond_0

    .line 452
    :cond_0
    invoke-virtual/range {v21 .. v21}, Lcom/smartisanos/launcher/view/Cell;->getOriginRowIndex()I

    move-result v17

    .line 453
    .local v17, "originRowIndex":I
    invoke-virtual/range {v21 .. v21}, Lcom/smartisanos/launcher/view/Cell;->getOriginColIndex()I

    move-result v15

    .line 454
    .local v15, "originColIndex":I
    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1, v15}, Lcom/smartisanos/launcher/view/Page;->getIndex(II)I

    move-result v7

    .line 457
    .local v7, "index":I
    invoke-virtual/range {v21 .. v21}, Lcom/smartisanos/launcher/view/Cell;->isVisibilityForBatchDrawShadow()Z

    move-result v27

    if-eqz v27, :cond_4

    .line 459
    aget-object v27, v12, v7

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Lcom/smartisanos/smengine/math/Matrix4f;->copy(Lcom/smartisanos/smengine/math/Matrix4f;)V

    .line 462
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/smartisanos/launcher/view/BatchBackground;->mUseSelfZ:Z

    move/from16 v27, v0

    if-eqz v27, :cond_1

    .line 463
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/smartisanos/smengine/World;->getCameraManager()Lcom/smartisanos/smengine/CameraManager;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/smartisanos/smengine/CameraManager;->getCurrentCamera()Lcom/smartisanos/smengine/Camera;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/smartisanos/smengine/Camera;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/smartisanos/smengine/math/Vector3f;->getZ()F

    move-result v11

    .line 464
    .local v11, "mCameraZ":F
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v27

    const/high16 v28, 0x3f800000    # 1.0f

    const/16 v29, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/launcher/view/BatchBackground;->mFixedScale:F

    move/from16 v30, v0

    move-object/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v0, v1, v2, v11, v3}, Lcom/smartisanos/launcher/view/PageView;->createZFromScale(FFFF)F

    move-result v8

    .line 465
    .local v8, "initZ":F
    new-instance v26, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct/range {v26 .. v26}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 466
    .local v26, "worldTranslate":Lcom/smartisanos/smengine/math/Vector3f;
    invoke-virtual/range {v25 .. v26}, Lcom/smartisanos/smengine/SceneNode;->getWorldTranslate(Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 467
    aget-object v27, v12, v7

    move-object/from16 v0, v26

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v28, v0

    const/high16 v29, 0x3f800000    # 1.0f

    mul-float v28, v28, v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/launcher/view/BatchBackground;->mFixedScale:F

    move/from16 v29, v0

    div-float v28, v28, v29

    move-object/from16 v0, v26

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v29, v0

    const/high16 v30, 0x3f800000    # 1.0f

    mul-float v29, v29, v30

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/launcher/view/BatchBackground;->mFixedScale:F

    move/from16 v30, v0

    div-float v29, v29, v30

    move-object/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2, v8}, Lcom/smartisanos/smengine/math/Matrix4f;->setTranslation(FFF)V

    .line 468
    aget-object v27, v12, v7

    const/high16 v28, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/launcher/view/BatchBackground;->mFixedScale:F

    move/from16 v29, v0

    div-float v28, v28, v29

    const/high16 v29, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/launcher/view/BatchBackground;->mFixedScale:F

    move/from16 v30, v0

    div-float v29, v29, v30

    const/high16 v30, 0x3f800000    # 1.0f

    invoke-virtual/range {v27 .. v30}, Lcom/smartisanos/smengine/math/Matrix4f;->setScale(FFF)V

    .line 481
    .end local v8    # "initZ":F
    .end local v11    # "mCameraZ":F
    .end local v26    # "worldTranslate":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_1
    :goto_1
    aget-object v27, v5, v7

    if-nez v27, :cond_2

    .line 482
    new-instance v27, Lcom/smartisanos/smengine/math/Vector4f;

    invoke-direct/range {v27 .. v27}, Lcom/smartisanos/smengine/math/Vector4f;-><init>()V

    aput-object v27, v5, v7

    .line 484
    :cond_2
    invoke-static {}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->getInstance()Lcom/smartisanos/launcher/theme/ChangeThemeHandler;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->isChangeThemeAnimating()Z

    move-result v27

    if-eqz v27, :cond_6

    .line 485
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/smartisanos/launcher/view/BatchBackground;->mUseSelfColor:Z

    move/from16 v27, v0

    if-nez v27, :cond_5

    .line 486
    aget-object v27, v5, v7

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/Cell;->getColor(Lcom/smartisanos/smengine/math/Vector4f;)V

    .line 502
    :goto_2
    add-int/lit8 v9, v9, 0x1

    .line 444
    .end local v7    # "index":I
    .end local v10    # "m":Lcom/smartisanos/smengine/math/Matrix4f;
    .end local v15    # "originColIndex":I
    .end local v17    # "originRowIndex":I
    .end local v21    # "pc":Lcom/smartisanos/launcher/view/Cell;
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 472
    .restart local v7    # "index":I
    .restart local v10    # "m":Lcom/smartisanos/smengine/math/Matrix4f;
    .restart local v15    # "originColIndex":I
    .restart local v17    # "originRowIndex":I
    .restart local v21    # "pc":Lcom/smartisanos/launcher/view/Cell;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/BatchBackground;->mMoveToOutOfScreenMatrix:Lcom/smartisanos/smengine/math/Matrix4f;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/smartisanos/smengine/math/Matrix4f;->loadIdentity()V

    .line 473
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/BatchBackground;->mMoveToOutOfScreenMatrix:Lcom/smartisanos/smengine/math/Matrix4f;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const v29, 0x461c3c00    # 9999.0f

    const/16 v30, 0x0

    invoke-virtual/range {v27 .. v30}, Lcom/smartisanos/smengine/math/Matrix4f;->setTranslation(FFF)V

    .line 475
    aget-object v27, v12, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/BatchBackground;->mMoveToOutOfScreenMatrix:Lcom/smartisanos/smengine/math/Matrix4f;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Lcom/smartisanos/smengine/math/Matrix4f;->copy(Lcom/smartisanos/smengine/math/Matrix4f;)V

    .line 476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/BatchBackground;->mMoveToOutOfScreenMatrix:Lcom/smartisanos/smengine/math/Matrix4f;

    move-object/from16 v27, v0

    if-nez v27, :cond_1

    goto :goto_1

    .line 488
    :cond_5
    aget-object v27, v5, v7

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/BatchBackground;->getColor(Lcom/smartisanos/smengine/math/Vector4f;)V

    goto :goto_2

    .line 493
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/smartisanos/launcher/view/BatchBackground;->mUseSelfColor:Z

    move/from16 v27, v0

    if-nez v27, :cond_7

    .line 494
    aget-object v27, v5, v7

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/Cell;->getColor(Lcom/smartisanos/smengine/math/Vector4f;)V

    goto :goto_2

    .line 496
    :cond_7
    aget-object v27, v5, v7

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/BatchBackground;->getColor(Lcom/smartisanos/smengine/math/Vector4f;)V

    goto :goto_2

    .line 507
    .end local v7    # "index":I
    .end local v10    # "m":Lcom/smartisanos/smengine/math/Matrix4f;
    .end local v15    # "originColIndex":I
    .end local v17    # "originRowIndex":I
    .end local v21    # "pc":Lcom/smartisanos/launcher/view/Cell;
    .end local v25    # "sn":Lcom/smartisanos/smengine/SceneNode;
    :cond_8
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/smartisanos/launcher/view/PageView;->getSelectedCell()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v23

    .line 508
    .local v23, "selectedCell":Lcom/smartisanos/launcher/view/Cell;
    if-eqz v23, :cond_b

    invoke-virtual/range {v23 .. v23}, Lcom/smartisanos/launcher/view/Cell;->isVisibilityForBatchDrawShadow()Z

    move-result v27

    if-eqz v27, :cond_b

    .line 510
    invoke-virtual/range {v23 .. v23}, Lcom/smartisanos/launcher/view/Cell;->getOriginRowIndex()I

    move-result v18

    .line 511
    .local v18, "orirow":I
    invoke-virtual/range {v23 .. v23}, Lcom/smartisanos/launcher/view/Cell;->getOriginColIndex()I

    move-result v14

    .line 512
    .local v14, "oricol":I
    invoke-virtual/range {v23 .. v23}, Lcom/smartisanos/launcher/view/Cell;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v19

    .line 513
    .local v19, "parent":Lcom/smartisanos/smengine/SceneNode;
    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/smartisanos/launcher/view/Page;

    move/from16 v27, v0

    if-eqz v27, :cond_c

    .line 519
    :cond_9
    :goto_3
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_b

    .line 521
    move/from16 v0, v18

    invoke-static {v0, v14}, Lcom/smartisanos/launcher/view/Page;->getCellIndex(II)I

    move-result v16

    .line 522
    .local v16, "originIndex":I
    invoke-virtual/range {v23 .. v23}, Lcom/smartisanos/launcher/view/Cell;->getWorldMatrix()Lcom/smartisanos/smengine/math/Matrix4f;

    move-result-object v24

    .line 523
    .local v24, "selectedCellWorldTransform":Lcom/smartisanos/smengine/math/Matrix4f;
    new-instance v26, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct/range {v26 .. v26}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 524
    .restart local v26    # "worldTranslate":Lcom/smartisanos/smengine/math/Vector3f;
    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/Cell;->getWorldTranslate(Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 525
    move-object/from16 v0, v26

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v27, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lcom/smartisanos/smengine/math/Matrix4f;->setTranslation(FFF)V

    .line 526
    aget-object v27, v12, v16

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/math/Matrix4f;->copy(Lcom/smartisanos/smengine/math/Matrix4f;)V

    .line 529
    aget-object v27, v5, v16

    if-nez v27, :cond_a

    .line 530
    new-instance v27, Lcom/smartisanos/smengine/math/Vector4f;

    invoke-direct/range {v27 .. v27}, Lcom/smartisanos/smengine/math/Vector4f;-><init>()V

    aput-object v27, v5, v16

    .line 532
    :cond_a
    invoke-static {}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->getInstance()Lcom/smartisanos/launcher/theme/ChangeThemeHandler;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->isChangeThemeAnimating()Z

    move-result v27

    if-eqz v27, :cond_d

    .line 533
    aget-object v27, v5, v16

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/Cell;->getColor(Lcom/smartisanos/smengine/math/Vector4f;)V

    .line 539
    :goto_4
    aget-object v13, v5, v16

    .line 540
    .local v13, "oriColor":Lcom/smartisanos/smengine/math/Vector4f;
    aget-object v27, v5, v16

    iget v0, v13, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    move/from16 v28, v0

    iget v0, v13, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    move/from16 v29, v0

    iget v0, v13, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    move/from16 v30, v0

    iget v0, v13, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    move/from16 v31, v0

    invoke-virtual/range {v27 .. v31}, Lcom/smartisanos/smengine/math/Vector4f;->set(FFFF)Lcom/smartisanos/smengine/math/Vector4f;

    .line 548
    .end local v13    # "oriColor":Lcom/smartisanos/smengine/math/Vector4f;
    .end local v14    # "oricol":I
    .end local v16    # "originIndex":I
    .end local v18    # "orirow":I
    .end local v19    # "parent":Lcom/smartisanos/smengine/SceneNode;
    .end local v24    # "selectedCellWorldTransform":Lcom/smartisanos/smengine/math/Matrix4f;
    .end local v26    # "worldTranslate":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_b
    mul-int v27, v22, v4

    move/from16 v0, v27

    if-le v9, v0, :cond_e

    .line 549
    new-instance v27, Ljava/lang/RuntimeException;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "mat array num error : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v27

    .line 515
    .restart local v14    # "oricol":I
    .restart local v18    # "orirow":I
    .restart local v19    # "parent":Lcom/smartisanos/smengine/SceneNode;
    :cond_c
    invoke-static/range {v19 .. v19}, Lcom/smartisanos/launcher/view/PageView;->sIsInstanceFromPageView(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_9

    .line 516
    invoke-virtual/range {v23 .. v23}, Lcom/smartisanos/launcher/view/Cell;->getPreParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v19

    goto/16 :goto_3

    .line 536
    .restart local v16    # "originIndex":I
    .restart local v24    # "selectedCellWorldTransform":Lcom/smartisanos/smengine/math/Matrix4f;
    .restart local v26    # "worldTranslate":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_d
    aget-object v27, v5, v16

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/Cell;->getColor(Lcom/smartisanos/smengine/math/Vector4f;)V

    goto :goto_4

    .line 552
    .end local v14    # "oricol":I
    .end local v16    # "originIndex":I
    .end local v18    # "orirow":I
    .end local v19    # "parent":Lcom/smartisanos/smengine/SceneNode;
    .end local v24    # "selectedCellWorldTransform":Lcom/smartisanos/smengine/math/Matrix4f;
    .end local v26    # "worldTranslate":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_e
    return-void
.end method

.method public setNativeData(Lcom/smartisanos/smengine/Camera;)V
    .locals 40
    .param p1, "camera"    # Lcom/smartisanos/smengine/Camera;

    .prologue
    .line 258
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/BatchBackground;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v0, v4, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_col_num:I

    move/from16 v21, v0

    .line 259
    .local v21, "colNum":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/BatchBackground;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v0, v4, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_row_num:I

    move/from16 v37, v0

    .line 261
    .local v37, "rowNum":I
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/BatchBackground;->mNeedInvisibleList:[Z

    array-length v4, v4

    move/from16 v0, v16

    if-ge v0, v4, :cond_0

    .line 262
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/BatchBackground;->mNeedInvisibleList:[Z

    const/4 v5, 0x1

    aput-boolean v5, v4, v16

    .line 261
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 265
    :cond_0
    move-object/from16 v0, p0

    move/from16 v1, v37

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/view/BatchBackground;->getCurrentModularColorArray(II)[Lcom/smartisanos/smengine/math/Vector4f;

    move-result-object v22

    .line 266
    .local v22, "colorArray":[Lcom/smartisanos/smengine/math/Vector4f;
    const/16 v16, 0x0

    :goto_1
    move-object/from16 v0, v22

    array-length v4, v0

    move/from16 v0, v16

    if-ge v0, v4, :cond_1

    .line 267
    aget-object v4, v22, v16

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v4, v5, v8, v10, v11}, Lcom/smartisanos/smengine/math/Vector4f;->set(FFFF)Lcom/smartisanos/smengine/math/Vector4f;

    .line 266
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 269
    :cond_1
    const/16 v25, 0x0

    .line 270
    .local v25, "k":I
    mul-int v28, v21, v37

    .line 271
    .local v28, "matrixNum":I
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/BatchBackground;->setMVPMatrixArrayNum(I)V

    .line 272
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/BatchBackground;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v36

    check-cast v36, Lcom/smartisanos/launcher/view/Page;

    .line 273
    .local v36, "parentPage":Lcom/smartisanos/launcher/view/Page;
    const/16 v16, 0x0

    move/from16 v23, v16

    .end local v16    # "i":I
    .local v23, "i":I
    :goto_2
    invoke-virtual/range {v36 .. v36}, Lcom/smartisanos/launcher/view/Page;->getChildCount()I

    move-result v4

    move/from16 v0, v23

    if-ge v0, v4, :cond_c

    .line 274
    move-object/from16 v0, v36

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/Page;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v12

    .line 275
    .local v12, "sn":Lcom/smartisanos/smengine/SceneNode;
    instance-of v4, v12, Lcom/smartisanos/launcher/view/Cell;

    if-eqz v4, :cond_a

    move-object v6, v12

    .line 276
    check-cast v6, Lcom/smartisanos/launcher/view/Cell;

    .line 277
    .local v6, "pc":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v12}, Lcom/smartisanos/smengine/SceneNode;->getWorldMatrix()Lcom/smartisanos/smengine/math/Matrix4f;

    move-result-object v26

    .line 278
    .local v26, "m":Lcom/smartisanos/smengine/math/Matrix4f;
    if-nez v26, :cond_2

    .line 281
    :cond_2
    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/Cell;->getRowIndex()I

    move-result v33

    .line 282
    .local v33, "originRowIndex":I
    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/Cell;->getColIndex()I

    move-result v31

    .line 283
    .local v31, "originColIndex":I
    move-object/from16 v0, v36

    move/from16 v1, v33

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/view/Page;->getIndex(II)I

    move-result v7

    .line 286
    .local v7, "index":I
    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/Cell;->isVisibilityForBatchDrawShadow()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/Cell;->isVisibilityForBatchBackground()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 289
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/smartisanos/launcher/view/BatchBackground;->mUseSelfZ:Z

    if-eqz v4, :cond_4

    .line 290
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/smengine/World;->getCameraManager()Lcom/smartisanos/smengine/CameraManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/smengine/CameraManager;->getCurrentCamera()Lcom/smartisanos/smengine/Camera;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/smengine/Camera;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/smengine/math/Vector3f;->getZ()F

    move-result v27

    .line 291
    .local v27, "mCameraZ":F
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v4

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v10, v0, Lcom/smartisanos/launcher/view/BatchBackground;->mFixedScale:F

    move/from16 v0, v27

    invoke-virtual {v4, v5, v8, v0, v10}, Lcom/smartisanos/launcher/view/PageView;->createZFromScale(FFFF)F

    move-result v9

    .line 295
    .local v9, "initZ":F
    move-object/from16 v0, p0

    iget v8, v0, Lcom/smartisanos/launcher/view/BatchBackground;->mFixedScale:F

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-virtual/range {v4 .. v11}, Lcom/smartisanos/launcher/view/BatchBackground;->calculateMVPMatrixArrayData(Lcom/smartisanos/smengine/Camera;Lcom/smartisanos/smengine/SceneNode;IFFZZ)V

    .line 308
    .end local v9    # "initZ":F
    .end local v27    # "mCameraZ":F
    :goto_3
    aget-object v4, v22, v7

    if-nez v4, :cond_3

    .line 309
    new-instance v4, Lcom/smartisanos/smengine/math/Vector4f;

    invoke-direct {v4}, Lcom/smartisanos/smengine/math/Vector4f;-><init>()V

    aput-object v4, v22, v7

    .line 311
    :cond_3
    invoke-static {}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->getInstance()Lcom/smartisanos/launcher/theme/ChangeThemeHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->isChangeThemeAnimating()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 312
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/smartisanos/launcher/view/BatchBackground;->mUseSelfColor:Z

    if-nez v4, :cond_6

    .line 313
    aget-object v4, v22, v7

    invoke-virtual {v6, v4}, Lcom/smartisanos/launcher/view/Cell;->getColor(Lcom/smartisanos/smengine/math/Vector4f;)V

    .line 327
    :goto_4
    sget-boolean v4, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v4, :cond_b

    .line 328
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/BatchBackground;->mSize:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {v12, v4}, Lcom/smartisanos/smengine/SceneNode;->getSize(Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 329
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/BatchBackground;->mPos:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {v12, v4}, Lcom/smartisanos/smengine/SceneNode;->getWorldTranslate(Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 330
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/BatchBackground;->mPos:Lcom/smartisanos/smengine/math/Vector3f;

    iget v13, v4, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/BatchBackground;->mPos:Lcom/smartisanos/smengine/math/Vector3f;

    iget v14, v4, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/BatchBackground;->mPos:Lcom/smartisanos/smengine/math/Vector3f;

    iget v15, v4, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/BatchBackground;->mSize:Lcom/smartisanos/smengine/math/Vector3f;

    iget v0, v4, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/BatchBackground;->mSize:Lcom/smartisanos/smengine/math/Vector3f;

    iget v0, v4, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/BatchBackground;->mCellTextureCoordArray:[F

    move-object/from16 v19, v0

    invoke-static/range {v13 .. v19}, Lcom/smartisanos/launcher/data/Utils;->getUVOnScreen(FFFZFF[F)V

    .line 332
    const/16 v24, 0x1

    .local v24, "j":I
    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/BatchBackground;->mCellTextureCoordArray:[F

    array-length v4, v4

    move/from16 v0, v24

    if-ge v0, v4, :cond_9

    .line 334
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/BatchBackground;->mCellTextureCoordArray:[F

    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/smartisanos/launcher/view/BatchBackground;->mCellTextureCoordArray:[F

    aget v8, v8, v24

    sub-float/2addr v5, v8

    aput v5, v4, v24

    .line 332
    add-int/lit8 v24, v24, 0x2

    goto :goto_5

    .line 297
    .end local v24    # "j":I
    :cond_4
    const/high16 v14, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move v13, v7

    invoke-virtual/range {v10 .. v17}, Lcom/smartisanos/launcher/view/BatchBackground;->calculateMVPMatrixArrayData(Lcom/smartisanos/smengine/Camera;Lcom/smartisanos/smengine/SceneNode;IFFZZ)V

    goto/16 :goto_3

    .line 305
    :cond_5
    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v18, 0x3f800000    # 1.0f

    const/16 v19, 0x1

    const/16 v20, 0x0

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object v15, v6

    move/from16 v16, v7

    invoke-virtual/range {v13 .. v20}, Lcom/smartisanos/launcher/view/BatchBackground;->calculateMVPMatrixArrayData(Lcom/smartisanos/smengine/Camera;Lcom/smartisanos/smengine/SceneNode;IFFZZ)V

    goto/16 :goto_3

    .line 315
    :cond_6
    aget-object v4, v22, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/smartisanos/launcher/view/BatchBackground;->getColor(Lcom/smartisanos/smengine/math/Vector4f;)V

    goto/16 :goto_4

    .line 320
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/smartisanos/launcher/view/BatchBackground;->mUseSelfColor:Z

    if-nez v4, :cond_8

    .line 321
    aget-object v4, v22, v7

    invoke-virtual {v6, v4}, Lcom/smartisanos/launcher/view/Cell;->getColor(Lcom/smartisanos/smengine/math/Vector4f;)V

    goto/16 :goto_4

    .line 323
    :cond_8
    aget-object v4, v22, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/smartisanos/launcher/view/BatchBackground;->getColor(Lcom/smartisanos/smengine/math/Vector4f;)V

    goto/16 :goto_4

    .line 337
    .restart local v24    # "j":I
    :cond_9
    const/16 v39, 0x8

    .line 339
    .local v39, "texStride":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/BatchBackground;->mCellTextureCoordArray:[F

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/smartisanos/launcher/view/BatchBackground;->mMeshTexTureCoordArray:[F

    mul-int v10, v7, v39

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/smartisanos/launcher/view/BatchBackground;->mCellTextureCoordArray:[F

    array-length v11, v11

    invoke-static {v4, v5, v8, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 346
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/BatchBackground;->mNeedInvisibleList:[Z

    const/4 v5, 0x0

    aput-boolean v5, v4, v7

    .line 347
    add-int/lit8 v25, v25, 0x1

    .line 273
    .end local v6    # "pc":Lcom/smartisanos/launcher/view/Cell;
    .end local v7    # "index":I
    .end local v24    # "j":I
    .end local v26    # "m":Lcom/smartisanos/smengine/math/Matrix4f;
    .end local v31    # "originColIndex":I
    .end local v33    # "originRowIndex":I
    .end local v39    # "texStride":I
    :cond_a
    add-int/lit8 v16, v23, 0x1

    .end local v23    # "i":I
    .restart local v16    # "i":I
    move/from16 v23, v16

    .end local v16    # "i":I
    .restart local v23    # "i":I
    goto/16 :goto_2

    .line 341
    .restart local v6    # "pc":Lcom/smartisanos/launcher/view/Cell;
    .restart local v7    # "index":I
    .restart local v26    # "m":Lcom/smartisanos/smengine/math/Matrix4f;
    .restart local v31    # "originColIndex":I
    .restart local v33    # "originRowIndex":I
    :cond_b
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "#### not Gaussian theme !!!!"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 350
    .end local v6    # "pc":Lcom/smartisanos/launcher/view/Cell;
    .end local v7    # "index":I
    .end local v12    # "sn":Lcom/smartisanos/smengine/SceneNode;
    .end local v26    # "m":Lcom/smartisanos/smengine/math/Matrix4f;
    .end local v31    # "originColIndex":I
    .end local v33    # "originRowIndex":I
    :cond_c
    sget-boolean v4, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v4, :cond_d

    .line 351
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/BatchBackground;->getMesh()Lcom/smartisanos/smengine/Mesh;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/smartisanos/launcher/view/BatchBackground;->mMeshTexTureCoordArray:[F

    invoke-virtual {v4, v5, v8}, Lcom/smartisanos/smengine/Mesh;->updateTexVertexFloatBuffer(I[F)V

    .line 354
    :cond_d
    const/16 v16, 0x0

    .end local v23    # "i":I
    .restart local v16    # "i":I
    :goto_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/BatchBackground;->mNeedInvisibleList:[Z

    array-length v4, v4

    move/from16 v0, v16

    if-ge v0, v4, :cond_f

    .line 355
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/BatchBackground;->mNeedInvisibleList:[Z

    aget-boolean v4, v4, v16

    if-eqz v4, :cond_e

    .line 356
    const/4 v15, 0x0

    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v18, 0x3f800000    # 1.0f

    const/16 v19, 0x1

    const/16 v20, 0x0

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    invoke-virtual/range {v13 .. v20}, Lcom/smartisanos/launcher/view/BatchBackground;->calculateMVPMatrixArrayData(Lcom/smartisanos/smengine/Camera;Lcom/smartisanos/smengine/SceneNode;IFFZZ)V

    .line 354
    :cond_e
    add-int/lit8 v16, v16, 0x1

    goto :goto_6

    .line 360
    :cond_f
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v4

    if-eqz v4, :cond_10

    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v4

    if-nez v4, :cond_11

    .line 412
    :cond_10
    return-void

    .line 363
    :cond_11
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/PageView;->getSelectedCell()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v38

    .line 364
    .local v38, "selectedCell":Lcom/smartisanos/launcher/view/Cell;
    if-eqz v38, :cond_14

    invoke-virtual/range {v38 .. v38}, Lcom/smartisanos/launcher/view/Cell;->isVisibilityForBatchDrawShadow()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 366
    invoke-virtual/range {v38 .. v38}, Lcom/smartisanos/launcher/view/Cell;->getOriginRowIndex()I

    move-result v34

    .line 367
    .local v34, "orirow":I
    invoke-virtual/range {v38 .. v38}, Lcom/smartisanos/launcher/view/Cell;->getOriginColIndex()I

    move-result v30

    .line 368
    .local v30, "oricol":I
    invoke-virtual/range {v38 .. v38}, Lcom/smartisanos/launcher/view/Cell;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v35

    .line 369
    .local v35, "parent":Lcom/smartisanos/smengine/SceneNode;
    move-object/from16 v0, v35

    instance-of v4, v0, Lcom/smartisanos/launcher/view/Page;

    if-eqz v4, :cond_16

    .line 375
    :cond_12
    :goto_7
    move-object/from16 v0, v35

    move-object/from16 v1, v36

    if-ne v0, v1, :cond_14

    .line 377
    move/from16 v0, v34

    move/from16 v1, v30

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/view/Page;->getCellIndex(II)I

    move-result v32

    .line 382
    .local v32, "originIndex":I
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v38

    move/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/smartisanos/launcher/view/BatchBackground;->calculateMVPMatrixArrayDataWithChildZ(Lcom/smartisanos/smengine/Camera;Lcom/smartisanos/smengine/SceneNode;IF)V

    .line 384
    aget-object v4, v22, v32

    if-nez v4, :cond_13

    .line 385
    new-instance v4, Lcom/smartisanos/smengine/math/Vector4f;

    invoke-direct {v4}, Lcom/smartisanos/smengine/math/Vector4f;-><init>()V

    aput-object v4, v22, v32

    .line 387
    :cond_13
    invoke-static {}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->getInstance()Lcom/smartisanos/launcher/theme/ChangeThemeHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->isChangeThemeAnimating()Z

    move-result v4

    if-eqz v4, :cond_17

    .line 388
    aget-object v4, v22, v32

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lcom/smartisanos/launcher/view/Cell;->getColor(Lcom/smartisanos/smengine/math/Vector4f;)V

    .line 394
    :goto_8
    aget-object v29, v22, v32

    .line 395
    .local v29, "oriColor":Lcom/smartisanos/smengine/math/Vector4f;
    aget-object v4, v22, v32

    move-object/from16 v0, v29

    iget v5, v0, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    move-object/from16 v0, v29

    iget v8, v0, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    move-object/from16 v0, v29

    iget v10, v0, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    move-object/from16 v0, v29

    iget v11, v0, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    invoke-virtual {v4, v5, v8, v10, v11}, Lcom/smartisanos/smengine/math/Vector4f;->set(FFFF)Lcom/smartisanos/smengine/math/Vector4f;

    .line 401
    .end local v29    # "oriColor":Lcom/smartisanos/smengine/math/Vector4f;
    .end local v30    # "oricol":I
    .end local v32    # "originIndex":I
    .end local v34    # "orirow":I
    .end local v35    # "parent":Lcom/smartisanos/smengine/SceneNode;
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/BatchBackground;->getMaterial()Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v4

    if-eqz v4, :cond_15

    .line 402
    move-object/from16 v0, v22

    array-length v4, v0

    const/16 v5, 0x9

    if-ne v4, v5, :cond_18

    .line 403
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/BatchBackground;->getMaterial()Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v4

    const/16 v5, 0x8

    move-object/from16 v0, v22

    invoke-virtual {v4, v5, v0}, Lcom/smartisanos/smengine/mymaterial/Material;->setParam(ILjava/lang/Object;)V

    .line 409
    :cond_15
    :goto_9
    mul-int v4, v37, v21

    move/from16 v0, v25

    if-le v0, v4, :cond_10

    .line 410
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mat array num error : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 371
    .restart local v30    # "oricol":I
    .restart local v34    # "orirow":I
    .restart local v35    # "parent":Lcom/smartisanos/smengine/SceneNode;
    :cond_16
    invoke-static/range {v35 .. v35}, Lcom/smartisanos/launcher/view/PageView;->sIsInstanceFromPageView(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 372
    invoke-virtual/range {v38 .. v38}, Lcom/smartisanos/launcher/view/Cell;->getPreParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v35

    goto/16 :goto_7

    .line 391
    .restart local v32    # "originIndex":I
    :cond_17
    aget-object v4, v22, v32

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lcom/smartisanos/launcher/view/Cell;->getColor(Lcom/smartisanos/smengine/math/Vector4f;)V

    goto :goto_8

    .line 405
    .end local v30    # "oricol":I
    .end local v32    # "originIndex":I
    .end local v34    # "orirow":I
    .end local v35    # "parent":Lcom/smartisanos/smengine/SceneNode;
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/BatchBackground;->getMaterial()Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v4

    const/4 v5, 0x7

    move-object/from16 v0, v22

    invoke-virtual {v4, v5, v0}, Lcom/smartisanos/smengine/mymaterial/Material;->setParam(ILjava/lang/Object;)V

    goto :goto_9
.end method

.method public setUseSelfColor(Z)V
    .locals 0
    .param p1, "use"    # Z

    .prologue
    .line 555
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/BatchBackground;->mUseSelfColor:Z

    .line 556
    return-void
.end method

.method public setUseSelfZ(ZF)V
    .locals 0
    .param p1, "use"    # Z
    .param p2, "fixedScale"    # F

    .prologue
    .line 558
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/BatchBackground;->mUseSelfZ:Z

    .line 559
    iput p2, p0, Lcom/smartisanos/launcher/view/BatchBackground;->mFixedScale:F

    .line 560
    return-void
.end method

.method public updatePreColorMaskColor()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 115
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/BatchBackground;->getMaterial()Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v0

    .line 116
    .local v0, "m":Lcom/smartisanos/smengine/mymaterial/Material;
    const-string v1, "smartisan_theme_aero"

    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v2

    invoke-static {v2}, Lcom/smartisanos/launcher/theme/ThemeManager;->getCurrentTheme(Landroid/content/Context;)Lcom/smartisanos/launcher/theme/Theme;

    move-result-object v2

    iget-object v2, v2, Lcom/smartisanos/launcher/theme/Theme;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    check-cast v0, Lcom/smartisanos/smengine/mymaterial/TextureBatchPreColorMaterial;

    .end local v0    # "m":Lcom/smartisanos/smengine/mymaterial/Material;
    sget v1, Lcom/smartisanos/launcher/data/Constants;->sGaussianBackGray:F

    invoke-virtual {v0, v3, v3, v3, v1}, Lcom/smartisanos/smengine/mymaterial/TextureBatchPreColorMaterial;->setBlendColor(FFFF)V

    .line 122
    :goto_0
    return-void

    .line 119
    .restart local v0    # "m":Lcom/smartisanos/smengine/mymaterial/Material;
    :cond_0
    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->sIsTransparentTheme:Z

    if-eqz v1, :cond_mist

    # transparent theme: identity blend, do not apply mist white fog
    check-cast v0, Lcom/smartisanos/smengine/mymaterial/TextureBatchPreColorMaterial;

    .end local v0    # "m":Lcom/smartisanos/smengine/mymaterial/Material;
    invoke-virtual {v0, v3, v3, v3, v3}, Lcom/smartisanos/smengine/mymaterial/TextureBatchPreColorMaterial;->setBlendColor(FFFF)V

    goto :goto_0

    .restart local v0    # "m":Lcom/smartisanos/smengine/mymaterial/Material;
    :cond_mist
    check-cast v0, Lcom/smartisanos/smengine/mymaterial/TextureBatchPreColorMaterial;

    .end local v0    # "m":Lcom/smartisanos/smengine/mymaterial/Material;
    sget-object v1, Lcom/smartisanos/launcher/data/Constants;->MIST_BACK_MASK:Lcom/smartisanos/smengine/math/Vector4f;

    iget v1, v1, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    sget-object v2, Lcom/smartisanos/launcher/data/Constants;->MIST_BACK_MASK:Lcom/smartisanos/smengine/math/Vector4f;

    iget v2, v2, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    sget-object v3, Lcom/smartisanos/launcher/data/Constants;->MIST_BACK_MASK:Lcom/smartisanos/smengine/math/Vector4f;

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    sget-object v4, Lcom/smartisanos/launcher/data/Constants;->MIST_BACK_MASK:Lcom/smartisanos/smengine/math/Vector4f;

    iget v4, v4, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/smartisanos/smengine/mymaterial/TextureBatchPreColorMaterial;->setBlendColor(FFFF)V

    goto :goto_0
.end method
