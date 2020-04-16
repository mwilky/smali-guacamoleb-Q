.class public Lcom/android/mwilky/LinearColorBar;
.super Landroid/widget/LinearLayout;
.source "LinearColorBar.java"


# static fields
.field static final LEFT_COLOR:I = -0x1

.field static final MIDDLE_COLOR:I = -0x1

.field static final RIGHT_COLOR:I = -0x777778


# instance fields
.field final mColorGradientPaint:Landroid/graphics/Paint;

.field final mColorPath:Landroid/graphics/Path;

.field final mEdgeGradientPaint:Landroid/graphics/Paint;

.field final mEdgePath:Landroid/graphics/Path;

.field private mGreenRatio:F

.field mLastInterestingLeft:I

.field mLastInterestingRight:I

.field private mLeftColor:I

.field mLineWidth:I

.field final mPaint:Landroid/graphics/Paint;

.field final mRect:Landroid/graphics/Rect;

.field private mRedRatio:F

.field private mRightColor:I

.field private mShowingGreen:Z

.field private mYellowRatio:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/mwilky/LinearColorBar;->mRect:Landroid/graphics/Rect;

    .line 41
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/mwilky/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mwilky/LinearColorBar;->mLeftColor:I

    .line 43
    const v0, -0x777778

    iput v0, p0, Lcom/android/mwilky/LinearColorBar;->mRightColor:I

    .line 48
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/mwilky/LinearColorBar;->mColorPath:Landroid/graphics/Path;

    .line 49
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/mwilky/LinearColorBar;->mEdgePath:Landroid/graphics/Path;

    .line 50
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/mwilky/LinearColorBar;->mColorGradientPaint:Landroid/graphics/Paint;

    .line 51
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/mwilky/LinearColorBar;->mEdgeGradientPaint:Landroid/graphics/Paint;

    .line 55
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/mwilky/LinearColorBar;->setWillNotDraw(Z)V

    .line 56
    iget-object v0, p0, Lcom/android/mwilky/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 57
    iget-object v0, p0, Lcom/android/mwilky/LinearColorBar;->mColorGradientPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 58
    iget-object v0, p0, Lcom/android/mwilky/LinearColorBar;->mColorGradientPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 59
    iget-object v0, p0, Lcom/android/mwilky/LinearColorBar;->mEdgeGradientPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 60
    invoke-virtual {p0}, Lcom/android/mwilky/LinearColorBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v2, 0xf0

    if-lt v0, v2, :cond_64

    const/4 v0, 0x2

    goto :goto_65

    :cond_64
    move v0, v1

    :goto_65
    iput v0, p0, Lcom/android/mwilky/LinearColorBar;->mLineWidth:I

    .line 62
    iget-object v0, p0, Lcom/android/mwilky/LinearColorBar;->mEdgeGradientPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/mwilky/LinearColorBar;->mLineWidth:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 63
    iget-object v0, p0, Lcom/android/mwilky/LinearColorBar;->mEdgeGradientPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 64
    return-void
.end method

.method private updateIndicator()V
    .registers 12

    .line 90
    invoke-virtual {p0}, Lcom/android/mwilky/LinearColorBar;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/mwilky/LinearColorBar;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    .line 91
    .local v0, "off":I
    if-gez v0, :cond_c

    const/4 v0, 0x0

    .line 92
    :cond_c
    iget-object v1, p0, Lcom/android/mwilky/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 93
    invoke-virtual {p0}, Lcom/android/mwilky/LinearColorBar;->getHeight()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 94
    iget-boolean v1, p0, Lcom/android/mwilky/LinearColorBar;->mShowingGreen:Z

    if-eqz v1, :cond_35

    .line 95
    iget-object v1, p0, Lcom/android/mwilky/LinearColorBar;->mColorGradientPaint:Landroid/graphics/Paint;

    new-instance v10, Landroid/graphics/LinearGradient;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    add-int/lit8 v2, v0, -0x2

    int-to-float v6, v2

    iget v8, p0, Lcom/android/mwilky/LinearColorBar;->mRightColor:I

    const v2, 0xffffff

    and-int v7, v8, v2

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_4c

    .line 98
    :cond_35
    iget-object v1, p0, Lcom/android/mwilky/LinearColorBar;->mColorGradientPaint:Landroid/graphics/Paint;

    new-instance v10, Landroid/graphics/LinearGradient;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    add-int/lit8 v2, v0, -0x2

    int-to-float v6, v2

    const v7, 0xffffff

    const/4 v8, -0x1

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 101
    :goto_4c
    iget-object v1, p0, Lcom/android/mwilky/LinearColorBar;->mEdgeGradientPaint:Landroid/graphics/Paint;

    new-instance v10, Landroid/graphics/LinearGradient;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    div-int/lit8 v2, v0, 0x2

    int-to-float v6, v2

    const v7, 0xa0a0a0

    const v8, -0x5f5f60

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 103
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 26
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 113
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-super/range {p0 .. p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 115
    invoke-virtual/range {p0 .. p0}, Lcom/android/mwilky/LinearColorBar;->getWidth()I

    move-result v2

    .line 117
    .local v2, "width":I
    const/4 v3, 0x0

    .line 119
    .local v3, "left":I
    int-to-float v4, v2

    iget v5, v0, Lcom/android/mwilky/LinearColorBar;->mRedRatio:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int/2addr v4, v3

    .line 120
    .local v4, "right":I
    int-to-float v5, v2

    iget v6, v0, Lcom/android/mwilky/LinearColorBar;->mYellowRatio:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    add-int/2addr v5, v4

    .line 121
    .local v5, "right2":I
    int-to-float v6, v2

    iget v7, v0, Lcom/android/mwilky/LinearColorBar;->mGreenRatio:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    add-int/2addr v6, v5

    .line 124
    .local v6, "right3":I
    iget-boolean v7, v0, Lcom/android/mwilky/LinearColorBar;->mShowingGreen:Z

    if-eqz v7, :cond_25

    .line 125
    move v7, v5

    .line 126
    .local v7, "indicatorLeft":I
    move v8, v6

    .local v8, "indicatorRight":I
    goto :goto_27

    .line 128
    .end local v7    # "indicatorLeft":I
    .end local v8    # "indicatorRight":I
    :cond_25
    move v7, v4

    .line 129
    .restart local v7    # "indicatorLeft":I
    move v8, v5

    .line 132
    .restart local v8    # "indicatorRight":I
    :goto_27
    iget v9, v0, Lcom/android/mwilky/LinearColorBar;->mLastInterestingLeft:I

    if-ne v9, v7, :cond_34

    iget v9, v0, Lcom/android/mwilky/LinearColorBar;->mLastInterestingRight:I

    if-eq v9, v8, :cond_30

    goto :goto_34

    :cond_30
    move/from16 v22, v6

    goto/16 :goto_ee

    .line 133
    :cond_34
    :goto_34
    iget-object v9, v0, Lcom/android/mwilky/LinearColorBar;->mColorPath:Landroid/graphics/Path;

    invoke-virtual {v9}, Landroid/graphics/Path;->reset()V

    .line 134
    iget-object v9, v0, Lcom/android/mwilky/LinearColorBar;->mEdgePath:Landroid/graphics/Path;

    invoke-virtual {v9}, Landroid/graphics/Path;->reset()V

    .line 135
    if-ge v7, v8, :cond_e8

    .line 136
    iget-object v9, v0, Lcom/android/mwilky/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    .line 137
    .local v9, "midTopY":I
    const/4 v10, 0x0

    .line 138
    .local v10, "midBottomY":I
    const/4 v11, 0x2

    .line 139
    .local v11, "xoff":I
    iget-object v12, v0, Lcom/android/mwilky/LinearColorBar;->mColorPath:Landroid/graphics/Path;

    int-to-float v13, v7

    iget-object v14, v0, Lcom/android/mwilky/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->top:I

    int-to-float v14, v14

    invoke-virtual {v12, v13, v14}, Landroid/graphics/Path;->moveTo(FF)V

    .line 140
    iget-object v15, v0, Lcom/android/mwilky/LinearColorBar;->mColorPath:Landroid/graphics/Path;

    int-to-float v12, v7

    const/16 v17, 0x0

    const/high16 v18, -0x40000000    # -2.0f

    int-to-float v13, v9

    const/high16 v20, -0x40000000    # -2.0f

    const/16 v21, 0x0

    move/from16 v16, v12

    move/from16 v19, v13

    invoke-virtual/range {v15 .. v21}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 143
    iget-object v12, v0, Lcom/android/mwilky/LinearColorBar;->mColorPath:Landroid/graphics/Path;

    add-int/lit8 v13, v2, 0x2

    add-int/lit8 v13, v13, -0x1

    int-to-float v13, v13

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/graphics/Path;->lineTo(FF)V

    .line 144
    iget-object v15, v0, Lcom/android/mwilky/LinearColorBar;->mColorPath:Landroid/graphics/Path;

    add-int/lit8 v12, v2, 0x2

    add-int/lit8 v12, v12, -0x1

    int-to-float v12, v12

    int-to-float v13, v9

    int-to-float v14, v8

    const/16 v19, 0x0

    move/from16 v22, v6

    .end local v6    # "right3":I
    .local v22, "right3":I
    int-to-float v6, v8

    move/from16 v23, v10

    .end local v10    # "midBottomY":I
    .local v23, "midBottomY":I
    iget-object v10, v0, Lcom/android/mwilky/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    move/from16 v16, v12

    move/from16 v17, v13

    move/from16 v18, v14

    move/from16 v20, v6

    move/from16 v21, v10

    invoke-virtual/range {v15 .. v21}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 147
    iget-object v6, v0, Lcom/android/mwilky/LinearColorBar;->mColorPath:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->close()V

    .line 148
    iget v6, v0, Lcom/android/mwilky/LinearColorBar;->mLineWidth:I

    int-to-float v6, v6

    const/high16 v10, 0x3f000000    # 0.5f

    add-float/2addr v6, v10

    .line 149
    .local v6, "lineOffset":F
    iget-object v10, v0, Lcom/android/mwilky/LinearColorBar;->mEdgePath:Landroid/graphics/Path;

    const/high16 v12, -0x40000000    # -2.0f

    add-float v13, v6, v12

    const/4 v14, 0x0

    invoke-virtual {v10, v13, v14}, Landroid/graphics/Path;->moveTo(FF)V

    .line 150
    iget-object v15, v0, Lcom/android/mwilky/LinearColorBar;->mEdgePath:Landroid/graphics/Path;

    add-float v16, v6, v12

    int-to-float v10, v9

    int-to-float v12, v7

    add-float v18, v12, v6

    int-to-float v12, v7

    add-float v20, v12, v6

    iget-object v12, v0, Lcom/android/mwilky/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    int-to-float v12, v12

    move/from16 v17, v10

    move/from16 v21, v12

    invoke-virtual/range {v15 .. v21}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 153
    iget-object v10, v0, Lcom/android/mwilky/LinearColorBar;->mEdgePath:Landroid/graphics/Path;

    add-int/lit8 v12, v2, 0x2

    add-int/lit8 v12, v12, -0x1

    int-to-float v12, v12

    sub-float/2addr v12, v6

    const/4 v13, 0x0

    invoke-virtual {v10, v12, v13}, Landroid/graphics/Path;->moveTo(FF)V

    .line 154
    iget-object v14, v0, Lcom/android/mwilky/LinearColorBar;->mEdgePath:Landroid/graphics/Path;

    add-int/lit8 v10, v2, 0x2

    add-int/lit8 v10, v10, -0x1

    int-to-float v10, v10

    sub-float v15, v10, v6

    int-to-float v10, v9

    int-to-float v12, v8

    sub-float v17, v12, v6

    const/16 v18, 0x0

    int-to-float v12, v8

    sub-float v19, v12, v6

    iget-object v12, v0, Lcom/android/mwilky/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    int-to-float v12, v12

    move/from16 v16, v10

    move/from16 v20, v12

    invoke-virtual/range {v14 .. v20}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    goto :goto_ea

    .line 135
    .end local v9    # "midTopY":I
    .end local v11    # "xoff":I
    .end local v22    # "right3":I
    .end local v23    # "midBottomY":I
    .local v6, "right3":I
    :cond_e8
    move/from16 v22, v6

    .line 158
    .end local v6    # "right3":I
    .restart local v22    # "right3":I
    :goto_ea
    iput v7, v0, Lcom/android/mwilky/LinearColorBar;->mLastInterestingLeft:I

    .line 159
    iput v8, v0, Lcom/android/mwilky/LinearColorBar;->mLastInterestingRight:I

    .line 162
    :goto_ee
    iget-object v6, v0, Lcom/android/mwilky/LinearColorBar;->mEdgePath:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_104

    .line 163
    iget-object v6, v0, Lcom/android/mwilky/LinearColorBar;->mEdgePath:Landroid/graphics/Path;

    iget-object v9, v0, Lcom/android/mwilky/LinearColorBar;->mEdgeGradientPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 164
    iget-object v6, v0, Lcom/android/mwilky/LinearColorBar;->mColorPath:Landroid/graphics/Path;

    iget-object v9, v0, Lcom/android/mwilky/LinearColorBar;->mColorGradientPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 167
    :cond_104
    if-ge v3, v4, :cond_11e

    .line 168
    iget-object v6, v0, Lcom/android/mwilky/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iput v3, v6, Landroid/graphics/Rect;->left:I

    .line 169
    iput v4, v6, Landroid/graphics/Rect;->right:I

    .line 170
    iget-object v6, v0, Lcom/android/mwilky/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    iget v9, v0, Lcom/android/mwilky/LinearColorBar;->mLeftColor:I

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 171
    iget-object v6, v0, Lcom/android/mwilky/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iget-object v9, v0, Lcom/android/mwilky/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6, v9}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 172
    sub-int v6, v4, v3

    sub-int/2addr v2, v6

    .line 173
    move v3, v4

    .line 176
    :cond_11e
    move v4, v5

    .line 178
    if-ge v3, v4, :cond_138

    .line 179
    iget-object v6, v0, Lcom/android/mwilky/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iput v3, v6, Landroid/graphics/Rect;->left:I

    .line 180
    iput v4, v6, Landroid/graphics/Rect;->right:I

    .line 181
    iget-object v6, v0, Lcom/android/mwilky/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    const/4 v9, -0x1

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 182
    iget-object v6, v0, Lcom/android/mwilky/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iget-object v9, v0, Lcom/android/mwilky/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6, v9}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 183
    sub-int v6, v4, v3

    sub-int/2addr v2, v6

    .line 184
    move v3, v4

    .line 188
    :cond_138
    add-int v4, v3, v2

    .line 189
    if-ge v3, v4, :cond_150

    .line 190
    iget-object v6, v0, Lcom/android/mwilky/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iput v3, v6, Landroid/graphics/Rect;->left:I

    .line 191
    iput v4, v6, Landroid/graphics/Rect;->right:I

    .line 192
    iget-object v6, v0, Lcom/android/mwilky/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    iget v9, v0, Lcom/android/mwilky/LinearColorBar;->mRightColor:I

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 193
    iget-object v6, v0, Lcom/android/mwilky/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iget-object v9, v0, Lcom/android/mwilky/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6, v9}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 195
    :cond_150
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 5
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 107
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 108
    invoke-direct {p0}, Lcom/android/mwilky/LinearColorBar;->updateIndicator()V

    .line 109
    return-void
.end method

.method public setLeftColor(I)V
    .registers 2
    .param p1, "color"    # I

    .line 74
    iput p1, p0, Lcom/android/mwilky/LinearColorBar;->mLeftColor:I

    .line 75
    return-void
.end method

.method public setRatios(FFF)V
    .registers 4
    .param p1, "red"    # F
    .param p2, "yellow"    # F
    .param p3, "green"    # F

    .line 67
    iput p1, p0, Lcom/android/mwilky/LinearColorBar;->mRedRatio:F

    .line 68
    iput p2, p0, Lcom/android/mwilky/LinearColorBar;->mYellowRatio:F

    .line 69
    iput p3, p0, Lcom/android/mwilky/LinearColorBar;->mGreenRatio:F

    .line 70
    invoke-virtual {p0}, Lcom/android/mwilky/LinearColorBar;->invalidate()V

    .line 71
    return-void
.end method

.method public setRightColor(I)V
    .registers 2
    .param p1, "color"    # I

    .line 78
    iput p1, p0, Lcom/android/mwilky/LinearColorBar;->mRightColor:I

    .line 79
    return-void
.end method

.method public setShowingGreen(Z)V
    .registers 3
    .param p1, "showingGreen"    # Z

    .line 82
    iget-boolean v0, p0, Lcom/android/mwilky/LinearColorBar;->mShowingGreen:Z

    if-eq v0, p1, :cond_c

    .line 83
    iput-boolean p1, p0, Lcom/android/mwilky/LinearColorBar;->mShowingGreen:Z

    .line 84
    invoke-direct {p0}, Lcom/android/mwilky/LinearColorBar;->updateIndicator()V

    .line 85
    invoke-virtual {p0}, Lcom/android/mwilky/LinearColorBar;->invalidate()V

    .line 87
    :cond_c
    return-void
.end method
