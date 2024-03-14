.class public Lcom/chartboost/sdk/impl/l1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/chartboost/sdk/impl/l1;->a:Landroid/os/Handler;

    return-void
.end method

.method public static a(I)Ljava/lang/Integer;
    .registers 2

    const/4 v0, 0x1

    if-lt p0, v0, :cond_c

    const/16 v0, 0x9

    if-gt p0, v0, :cond_c

    .line 1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_c
    const/4 p0, 0x0

    return-object p0
.end method

.method private a(ILcom/chartboost/sdk/Model/c;Ljava/lang/Runnable;ZLcom/chartboost/sdk/e;)V
    .registers 15

    const/4 v0, 0x7

    if-ne p1, v0, :cond_9

    if-eqz p3, :cond_8

    .line 4
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    :cond_8
    return-void

    :cond_9
    const-string v0, "AnimationManager"

    if-eqz p2, :cond_3a

    .line 9
    iget-object v1, p2, Lcom/chartboost/sdk/Model/c;->z:Lcom/chartboost/sdk/impl/r1;

    if-nez v1, :cond_12

    goto :goto_3a

    .line 13
    :cond_12
    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/r1;->c()Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_21

    .line 15
    invoke-virtual {p5, p2}, Lcom/chartboost/sdk/e;->d(Lcom/chartboost/sdk/Model/c;)V

    const-string p1, "Transition of impression canceled due to lack of view"

    .line 16
    invoke-static {v0, p1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 19
    :cond_21
    invoke-virtual {v4}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p5

    .line 20
    invoke-virtual {p5}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 21
    new-instance v0, Lcom/chartboost/sdk/impl/l1$a;

    move-object v2, v0

    move-object v3, p0

    move v5, p1

    move-object v6, p2

    move-object v7, p3

    move v8, p4

    invoke-direct/range {v2 .. v8}, Lcom/chartboost/sdk/impl/l1$a;-><init>(Lcom/chartboost/sdk/impl/l1;Landroid/view/View;ILcom/chartboost/sdk/Model/c;Ljava/lang/Runnable;Z)V

    invoke-virtual {p5, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_39
    return-void

    :cond_3a
    :goto_3a
    const-string p1, "Transition of impression canceled due to lack of container"

    .line 22
    invoke-static {v0, p1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(ILcom/chartboost/sdk/Model/c;Ljava/lang/Runnable;)V
    .registers 5

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/chartboost/sdk/impl/l1;->a(ILcom/chartboost/sdk/Model/c;Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public a(ILcom/chartboost/sdk/Model/c;Ljava/lang/Runnable;Lcom/chartboost/sdk/e;)V
    .registers 11

    const/4 v4, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 2
    invoke-direct/range {v0 .. v5}, Lcom/chartboost/sdk/impl/l1;->a(ILcom/chartboost/sdk/Model/c;Ljava/lang/Runnable;ZLcom/chartboost/sdk/e;)V

    return-void
.end method

.method a(ILcom/chartboost/sdk/Model/c;Ljava/lang/Runnable;Z)V
    .registers 33

    move/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 23
    new-instance v3, Landroid/view/animation/AnimationSet;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 24
    new-instance v5, Landroid/view/animation/AlphaAnimation;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v5, v6, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v3, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const-string v5, "AnimationManager"

    if-eqz v1, :cond_271

    .line 27
    iget-object v7, v1, Lcom/chartboost/sdk/Model/c;->z:Lcom/chartboost/sdk/impl/r1;

    if-nez v7, :cond_20

    goto/16 :goto_271

    .line 33
    :cond_20
    invoke-virtual {v7}, Lcom/chartboost/sdk/impl/r1;->c()Landroid/view/View;

    move-result-object v7

    if-nez v7, :cond_31

    if-eqz v2, :cond_2b

    .line 36
    invoke-interface/range {p3 .. p3}, Ljava/lang/Runnable;->run()V

    :cond_2b
    const-string v0, "Transition of impression canceled due to lack of view"

    .line 37
    invoke-static {v5, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 42
    :cond_31
    iget v5, v1, Lcom/chartboost/sdk/Model/c;->a:I

    const/4 v8, 0x2

    if-eq v5, v8, :cond_38

    if-ne v5, v4, :cond_3a

    .line 43
    :cond_38
    iget-object v7, v1, Lcom/chartboost/sdk/Model/c;->z:Lcom/chartboost/sdk/impl/r1;

    .line 46
    :cond_3a
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    .line 47
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v8

    int-to-float v8, v8

    const v9, 0x3ecccccd    # 0.4f

    const v10, 0x3e99999a    # 0.3f

    .line 58
    iget-object v1, v1, Lcom/chartboost/sdk/Model/c;->r:Lcom/chartboost/sdk/Model/a;

    iget v1, v1, Lcom/chartboost/sdk/Model/a;->b:I

    const-wide/16 v11, 0x1f4

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v13, 0x0

    packed-switch v0, :pswitch_data_27e

    :pswitch_56
    goto/16 :goto_256

    :pswitch_58
    if-eqz p4, :cond_5c

    neg-float v1, v5

    goto :goto_5d

    :cond_5c
    const/4 v1, 0x0

    :goto_5d
    if-eqz p4, :cond_61

    const/4 v5, 0x0

    goto :goto_62

    :cond_61
    neg-float v5, v5

    .line 154
    :goto_62
    new-instance v6, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v6, v1, v5, v13, v13}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 155
    invoke-virtual {v6, v11, v12}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 156
    invoke-virtual {v6, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 157
    invoke-virtual {v3, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_256

    :pswitch_72
    if-eqz p4, :cond_76

    move v1, v5

    goto :goto_77

    :cond_76
    const/4 v1, 0x0

    :goto_77
    if-eqz p4, :cond_7a

    const/4 v5, 0x0

    .line 158
    :cond_7a
    new-instance v6, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v6, v1, v5, v13, v13}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 159
    invoke-virtual {v6, v11, v12}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 160
    invoke-virtual {v6, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 161
    invoke-virtual {v3, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_256

    :pswitch_8a
    if-eqz p4, :cond_92

    .line 162
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v13, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    goto :goto_97

    .line 163
    :cond_92
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v6, v13}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 164
    :goto_97
    invoke-virtual {v1, v11, v12}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 165
    invoke-virtual {v1, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 166
    new-instance v3, Landroid/view/animation/AnimationSet;

    invoke-direct {v3, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 167
    invoke-virtual {v3, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_256

    :pswitch_a7
    if-eqz p4, :cond_ab

    move v1, v8

    goto :goto_ac

    :cond_ab
    const/4 v1, 0x0

    :goto_ac
    if-eqz p4, :cond_af

    const/4 v8, 0x0

    .line 222
    :cond_af
    new-instance v5, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v5, v13, v13, v1, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 223
    invoke-virtual {v5, v11, v12}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 224
    invoke-virtual {v5, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 225
    invoke-virtual {v3, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_256

    :pswitch_bf
    if-eqz p4, :cond_c3

    neg-float v1, v8

    goto :goto_c4

    :cond_c3
    const/4 v1, 0x0

    :goto_c4
    if-eqz p4, :cond_c8

    const/4 v5, 0x0

    goto :goto_c9

    :cond_c8
    neg-float v5, v8

    .line 232
    :goto_c9
    new-instance v6, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v6, v13, v13, v1, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 233
    invoke-virtual {v6, v11, v12}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 234
    invoke-virtual {v6, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 235
    invoke-virtual {v3, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_256

    :pswitch_d9
    if-eqz p4, :cond_ed

    .line 236
    new-instance v20, Lcom/chartboost/sdk/impl/p1;

    div-float v17, v5, v1

    div-float v18, v8, v1

    const/high16 v15, -0x3d900000    # -60.0f

    const/16 v16, 0x0

    const/16 v19, 0x0

    move-object/from16 v14, v20

    invoke-direct/range {v14 .. v19}, Lcom/chartboost/sdk/impl/p1;-><init>(FFFFZ)V

    goto :goto_fe

    .line 238
    :cond_ed
    new-instance v14, Lcom/chartboost/sdk/impl/p1;

    div-float v24, v5, v1

    div-float v25, v8, v1

    const/16 v22, 0x0

    const/high16 v23, 0x42700000    # 60.0f

    const/16 v26, 0x0

    move-object/from16 v21, v14

    invoke-direct/range {v21 .. v26}, Lcom/chartboost/sdk/impl/p1;-><init>(FFFFZ)V

    .line 239
    :goto_fe
    invoke-virtual {v14, v11, v12}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 240
    invoke-virtual {v14, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 241
    invoke-virtual {v3, v14}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    if-eqz p4, :cond_10f

    .line 243
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    invoke-direct {v1, v9, v6, v9, v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    goto :goto_114

    .line 244
    :cond_10f
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    invoke-direct {v1, v6, v9, v6, v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    .line 245
    :goto_114
    invoke-virtual {v1, v11, v12}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 246
    invoke-virtual {v1, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 247
    invoke-virtual {v3, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    if-eqz p4, :cond_12a

    .line 250
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    mul-float v5, v5, v10

    neg-float v6, v8

    mul-float v6, v6, v9

    invoke-direct {v1, v5, v13, v6, v13}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_131

    .line 252
    :cond_12a
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    mul-float v5, v5, v10

    invoke-direct {v1, v13, v5, v13, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 253
    :goto_131
    invoke-virtual {v1, v11, v12}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 254
    invoke-virtual {v1, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 255
    invoke-virtual {v3, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_256

    :pswitch_13c
    const-wide/16 v5, 0x0

    if-eqz p4, :cond_1d4

    .line 327
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const v14, 0x3f19999a    # 0.6f

    const v15, 0x3f8ccccd    # 1.1f

    const v16, 0x3f19999a    # 0.6f

    const v17, 0x3f8ccccd    # 1.1f

    const/16 v18, 0x1

    const/high16 v19, 0x3f000000    # 0.5f

    const/16 v20, 0x1

    const/high16 v21, 0x3f000000    # 0.5f

    move-object v13, v1

    invoke-direct/range {v13 .. v21}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    long-to-float v8, v11

    const v9, 0x3f19999a    # 0.6f

    mul-float v9, v9, v8

    .line 328
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v10

    int-to-long v13, v10

    invoke-virtual {v1, v13, v14}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 329
    invoke-virtual {v1, v5, v6}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 330
    invoke-virtual {v1, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 331
    invoke-virtual {v3, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 333
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const/high16 v16, 0x3f800000    # 1.0f

    const v17, 0x3f51745c

    const/high16 v18, 0x3f800000    # 1.0f

    const v19, 0x3f51745c

    const/16 v22, 0x1

    const/high16 v23, 0x3f000000    # 0.5f

    move-object v15, v1

    invoke-direct/range {v15 .. v23}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    const v5, 0x3e4ccccc    # 0.19999999f

    mul-float v5, v5, v8

    .line 334
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v1, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 336
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-long v5, v5

    .line 337
    invoke-virtual {v1, v5, v6}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 339
    invoke-virtual {v1, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 340
    invoke-virtual {v3, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 342
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const/high16 v14, 0x3f800000    # 1.0f

    const v15, 0x3f8e38e4

    const v17, 0x3f8e38e4

    const/16 v18, 0x1

    const/high16 v19, 0x3f000000    # 0.5f

    move-object v13, v1

    invoke-direct/range {v13 .. v21}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    const v5, 0x3dccccc8    # 0.099999964f

    mul-float v5, v5, v8

    .line 343
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v1, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    const v5, 0x3f4ccccd    # 0.8f

    mul-float v8, v8, v5

    .line 344
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v1, v5, v6}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 345
    invoke-virtual {v1, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 346
    invoke-virtual {v3, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_256

    .line 349
    :cond_1d4
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const/high16 v14, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    const/high16 v16, 0x3f800000    # 1.0f

    const/16 v17, 0x0

    const/16 v18, 0x1

    const/high16 v19, 0x3f000000    # 0.5f

    const/16 v20, 0x1

    const/high16 v21, 0x3f000000    # 0.5f

    move-object v13, v1

    invoke-direct/range {v13 .. v21}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 350
    invoke-virtual {v1, v11, v12}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 351
    invoke-virtual {v1, v5, v6}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 352
    invoke-virtual {v1, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 353
    invoke-virtual {v3, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_256

    :pswitch_1f6
    if-eqz p4, :cond_20a

    .line 354
    new-instance v14, Lcom/chartboost/sdk/impl/p1;

    div-float v25, v5, v1

    div-float v26, v8, v1

    const/high16 v23, -0x3d900000    # -60.0f

    const/16 v24, 0x0

    const/16 v27, 0x1

    move-object/from16 v22, v14

    invoke-direct/range {v22 .. v27}, Lcom/chartboost/sdk/impl/p1;-><init>(FFFFZ)V

    goto :goto_21a

    .line 356
    :cond_20a
    new-instance v14, Lcom/chartboost/sdk/impl/p1;

    div-float v18, v5, v1

    div-float v19, v8, v1

    const/16 v16, 0x0

    const/high16 v17, 0x42700000    # 60.0f

    const/16 v20, 0x1

    move-object v15, v14

    invoke-direct/range {v15 .. v20}, Lcom/chartboost/sdk/impl/p1;-><init>(FFFFZ)V

    .line 357
    :goto_21a
    invoke-virtual {v14, v11, v12}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 358
    invoke-virtual {v14, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 359
    invoke-virtual {v3, v14}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    if-eqz p4, :cond_22b

    .line 361
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    invoke-direct {v1, v9, v6, v9, v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    goto :goto_230

    .line 362
    :cond_22b
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    invoke-direct {v1, v6, v9, v6, v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    .line 363
    :goto_230
    invoke-virtual {v1, v11, v12}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 364
    invoke-virtual {v1, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 365
    invoke-virtual {v3, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    if-eqz p4, :cond_246

    .line 368
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    neg-float v5, v5

    mul-float v5, v5, v9

    mul-float v8, v8, v10

    invoke-direct {v1, v5, v13, v8, v13}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_24d

    .line 370
    :cond_246
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    mul-float v8, v8, v10

    invoke-direct {v1, v13, v5, v13, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 371
    :goto_24d
    invoke-virtual {v1, v11, v12}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 372
    invoke-virtual {v1, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 373
    invoke-virtual {v3, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    :goto_256
    const/4 v1, 0x7

    if-ne v0, v1, :cond_261

    if-eqz v2, :cond_25e

    .line 455
    invoke-interface/range {p3 .. p3}, Ljava/lang/Runnable;->run()V

    :cond_25e
    move-object/from16 v0, p0

    goto :goto_270

    :cond_261
    if-eqz v2, :cond_26b

    move-object/from16 v0, p0

    .line 460
    iget-object v1, v0, Lcom/chartboost/sdk/impl/l1;->a:Landroid/os/Handler;

    invoke-virtual {v1, v2, v11, v12}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_26d

    :cond_26b
    move-object/from16 v0, p0

    .line 462
    :goto_26d
    invoke-virtual {v7, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_270
    return-void

    :cond_271
    :goto_271
    move-object/from16 v0, p0

    const-string v1, "Transition of impression canceled due to lack of container"

    .line 463
    invoke-static {v5, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_27d

    .line 465
    invoke-interface/range {p3 .. p3}, Ljava/lang/Runnable;->run()V

    :cond_27d
    return-void

    :pswitch_data_27e
    .packed-switch 0x1
        :pswitch_1f6
        :pswitch_13c
        :pswitch_d9
        :pswitch_bf
        :pswitch_a7
        :pswitch_8a
        :pswitch_56
        :pswitch_72
        :pswitch_58
    .end packed-switch
.end method

.method public a(ZLandroid/view/View;J)V
    .registers 9

    .line 470
    invoke-virtual {p2}, Landroid/view/View;->clearAnimation()V

    if-eqz p1, :cond_9

    const/4 v0, 0x0

    .line 472
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 473
    :cond_9
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p1, :cond_12

    const/4 v3, 0x0

    goto :goto_14

    :cond_12
    const/high16 v3, 0x3f800000    # 1.0f

    :goto_14
    if-eqz p1, :cond_18

    const/high16 v1, 0x3f800000    # 1.0f

    :cond_18
    invoke-direct {v0, v3, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 474
    invoke-virtual {v0, p3, p4}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 p1, 0x1

    .line 475
    invoke-virtual {v0, p1}, Landroid/view/animation/Animation;->setFillBefore(Z)V

    .line 476
    invoke-virtual {p2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public a(ZLandroid/view/View;Lcom/chartboost/sdk/Model/a;)V
    .registers 6

    .line 466
    iget p3, p3, Lcom/chartboost/sdk/Model/a;->b:I

    const-wide/16 v0, 0x1f4

    .line 469
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/chartboost/sdk/impl/l1;->a(ZLandroid/view/View;J)V

    return-void
.end method
