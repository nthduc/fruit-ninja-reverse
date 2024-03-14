.class public final Lcom/helpshift/views/FontApplier;
.super Ljava/lang/Object;
.source "FontApplier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpshift/views/FontApplier$FontLayoutListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "HS_FontApplier"

.field private static fontPathInternal:Ljava/lang/String; = null

.field private static typeface:Landroid/graphics/Typeface; = null

.field private static typefaceInitialisationTried:Z = false

.field private static typefaceSpan:Lcom/helpshift/views/HSTypefaceSpan;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static apply(Landroid/app/Dialog;)V
    .registers 2

    const v0, 0x1020002

    .line 42
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 43
    invoke-static {p0}, Lcom/helpshift/views/FontApplier;->apply(Landroid/view/View;)V

    return-void
.end method

.method public static apply(Landroid/view/View;)V
    .registers 3

    .line 47
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/helpshift/views/FontApplier;->initTypeface(Landroid/content/Context;)V

    .line 48
    sget-object v0, Lcom/helpshift/views/FontApplier;->typeface:Landroid/graphics/Typeface;

    if-nez v0, :cond_c

    return-void

    .line 51
    :cond_c
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/helpshift/views/FontApplier$FontLayoutListener;

    invoke-direct {v1, p0}, Lcom/helpshift/views/FontApplier$FontLayoutListener;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public static apply(Landroid/widget/TextView;)V
    .registers 2

    .line 34
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/helpshift/views/FontApplier;->initTypeface(Landroid/content/Context;)V

    .line 35
    sget-object v0, Lcom/helpshift/views/FontApplier;->typeface:Landroid/graphics/Typeface;

    if-nez v0, :cond_c

    return-void

    .line 38
    :cond_c
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method static applyInternal(Landroid/view/View;)V
    .registers 3

    .line 55
    instance-of v0, p0, Landroid/widget/TextView;

    if-eqz v0, :cond_a

    .line 56
    check-cast p0, Landroid/widget/TextView;

    invoke-static {p0}, Lcom/helpshift/views/FontApplier;->apply(Landroid/widget/TextView;)V

    goto :goto_21

    .line 58
    :cond_a
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_21

    .line 59
    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 60
    :goto_11
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_21

    .line 61
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/helpshift/views/FontApplier;->applyInternal(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_21
    :goto_21
    return-void
.end method

.method public static getFontPath()Ljava/lang/String;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 76
    sget-object v0, Lcom/helpshift/views/FontApplier;->fontPathInternal:Ljava/lang/String;

    return-object v0
.end method

.method public static getTypefaceSpan()Lcom/helpshift/views/HSTypefaceSpan;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 68
    sget-object v0, Lcom/helpshift/views/FontApplier;->typeface:Landroid/graphics/Typeface;

    if-eqz v0, :cond_f

    sget-object v1, Lcom/helpshift/views/FontApplier;->typefaceSpan:Lcom/helpshift/views/HSTypefaceSpan;

    if-nez v1, :cond_f

    .line 69
    new-instance v1, Lcom/helpshift/views/HSTypefaceSpan;

    invoke-direct {v1, v0}, Lcom/helpshift/views/HSTypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    sput-object v1, Lcom/helpshift/views/FontApplier;->typefaceSpan:Lcom/helpshift/views/HSTypefaceSpan;

    .line 71
    :cond_f
    sget-object v0, Lcom/helpshift/views/FontApplier;->typefaceSpan:Lcom/helpshift/views/HSTypefaceSpan;

    return-object v0
.end method

.method private static initTypeface(Landroid/content/Context;)V
    .registers 5

    .line 80
    invoke-static {}, Lcom/helpshift/views/FontApplier;->getFontPath()Ljava/lang/String;

    move-result-object v0

    .line 81
    invoke-static {v0}, Lcom/helpshift/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_41

    sget-object v1, Lcom/helpshift/views/FontApplier;->typeface:Landroid/graphics/Typeface;

    if-nez v1, :cond_41

    sget-boolean v1, Lcom/helpshift/views/FontApplier;->typefaceInitialisationTried:Z

    if-nez v1, :cond_41

    const/4 v1, 0x1

    .line 83
    :try_start_13
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-static {p0, v0}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p0

    sput-object p0, Lcom/helpshift/views/FontApplier;->typeface:Landroid/graphics/Typeface;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1d} :catch_22
    .catchall {:try_start_13 .. :try_end_1d} :catchall_20

    .line 89
    :goto_1d
    sput-boolean v1, Lcom/helpshift/views/FontApplier;->typefaceInitialisationTried:Z

    goto :goto_41

    :catchall_20
    move-exception p0

    goto :goto_3e

    :catch_22
    move-exception p0

    :try_start_23
    const-string v0, "HS_FontApplier"

    .line 86
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Typeface initialisation failed. Using default typeface. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3d
    .catchall {:try_start_23 .. :try_end_3d} :catchall_20

    goto :goto_1d

    .line 89
    :goto_3e
    sput-boolean v1, Lcom/helpshift/views/FontApplier;->typefaceInitialisationTried:Z

    .line 90
    throw p0

    :cond_41
    :goto_41
    return-void
.end method

.method public static setFontPath(Ljava/lang/String;)V
    .registers 1

    .line 30
    sput-object p0, Lcom/helpshift/views/FontApplier;->fontPathInternal:Ljava/lang/String;

    return-void
.end method
