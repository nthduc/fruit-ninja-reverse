.class public final Lcom/google/android/gms/ads/AdSize;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation


# static fields
.field public static final AUTO_HEIGHT:I = -0x2

.field public static final BANNER:Lcom/google/android/gms/ads/AdSize;

.field public static final FLUID:Lcom/google/android/gms/ads/AdSize;

.field public static final FULL_BANNER:Lcom/google/android/gms/ads/AdSize;

.field public static final FULL_WIDTH:I = -0x1

.field public static final INVALID:Lcom/google/android/gms/ads/AdSize;

.field public static final LARGE_BANNER:Lcom/google/android/gms/ads/AdSize;

.field public static final LEADERBOARD:Lcom/google/android/gms/ads/AdSize;

.field public static final MEDIUM_RECTANGLE:Lcom/google/android/gms/ads/AdSize;

.field public static final SEARCH:Lcom/google/android/gms/ads/AdSize;

.field public static final SMART_BANNER:Lcom/google/android/gms/ads/AdSize;

.field public static final WIDE_SKYSCRAPER:Lcom/google/android/gms/ads/AdSize;

.field public static final zzacx:Lcom/google/android/gms/ads/AdSize;


# instance fields
.field private final height:I

.field private final width:I

.field private final zzacy:Ljava/lang/String;

.field private zzacz:Z

.field private zzada:Z

.field private zzadb:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 84
    new-instance v0, Lcom/google/android/gms/ads/AdSize;

    const/16 v1, 0x140

    const/16 v2, 0x32

    const-string v3, "320x50_mb"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/ads/AdSize;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;

    .line 85
    new-instance v0, Lcom/google/android/gms/ads/AdSize;

    const/16 v3, 0x1d4

    const/16 v4, 0x3c

    const-string v5, "468x60_as"

    invoke-direct {v0, v3, v4, v5}, Lcom/google/android/gms/ads/AdSize;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/ads/AdSize;->FULL_BANNER:Lcom/google/android/gms/ads/AdSize;

    .line 86
    new-instance v0, Lcom/google/android/gms/ads/AdSize;

    const/16 v3, 0x64

    const-string v4, "320x100_as"

    invoke-direct {v0, v1, v3, v4}, Lcom/google/android/gms/ads/AdSize;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/ads/AdSize;->LARGE_BANNER:Lcom/google/android/gms/ads/AdSize;

    .line 87
    new-instance v0, Lcom/google/android/gms/ads/AdSize;

    const/16 v1, 0x2d8

    const/16 v3, 0x5a

    const-string v4, "728x90_as"

    invoke-direct {v0, v1, v3, v4}, Lcom/google/android/gms/ads/AdSize;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/ads/AdSize;->LEADERBOARD:Lcom/google/android/gms/ads/AdSize;

    .line 88
    new-instance v0, Lcom/google/android/gms/ads/AdSize;

    const/16 v1, 0x12c

    const/16 v3, 0xfa

    const-string v4, "300x250_as"

    invoke-direct {v0, v1, v3, v4}, Lcom/google/android/gms/ads/AdSize;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/ads/AdSize;->MEDIUM_RECTANGLE:Lcom/google/android/gms/ads/AdSize;

    .line 89
    new-instance v0, Lcom/google/android/gms/ads/AdSize;

    const/16 v1, 0xa0

    const/16 v3, 0x258

    const-string v4, "160x600_as"

    invoke-direct {v0, v1, v3, v4}, Lcom/google/android/gms/ads/AdSize;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/ads/AdSize;->WIDE_SKYSCRAPER:Lcom/google/android/gms/ads/AdSize;

    .line 90
    new-instance v0, Lcom/google/android/gms/ads/AdSize;

    const/4 v1, -0x1

    const/4 v3, -0x2

    const-string v4, "smart_banner"

    invoke-direct {v0, v1, v3, v4}, Lcom/google/android/gms/ads/AdSize;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/ads/AdSize;->SMART_BANNER:Lcom/google/android/gms/ads/AdSize;

    .line 91
    new-instance v0, Lcom/google/android/gms/ads/AdSize;

    const/4 v1, -0x3

    const/4 v3, -0x4

    const-string v4, "fluid"

    invoke-direct {v0, v1, v3, v4}, Lcom/google/android/gms/ads/AdSize;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/ads/AdSize;->FLUID:Lcom/google/android/gms/ads/AdSize;

    .line 92
    new-instance v0, Lcom/google/android/gms/ads/AdSize;

    const/4 v3, 0x0

    const-string v4, "invalid"

    invoke-direct {v0, v3, v3, v4}, Lcom/google/android/gms/ads/AdSize;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/ads/AdSize;->INVALID:Lcom/google/android/gms/ads/AdSize;

    .line 93
    new-instance v0, Lcom/google/android/gms/ads/AdSize;

    const-string v4, "50x50_mb"

    invoke-direct {v0, v2, v2, v4}, Lcom/google/android/gms/ads/AdSize;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/ads/AdSize;->zzacx:Lcom/google/android/gms/ads/AdSize;

    .line 94
    new-instance v0, Lcom/google/android/gms/ads/AdSize;

    const-string v2, "search_v2"

    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/gms/ads/AdSize;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/ads/AdSize;->SEARCH:Lcom/google/android/gms/ads/AdSize;

    return-void
.end method

.method public constructor <init>(II)V
    .registers 7

    const/4 v0, -0x1

    if-ne p1, v0, :cond_6

    const-string v0, "FULL"

    goto :goto_a

    .line 2
    :cond_6
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_a
    const/4 v1, -0x2

    if-ne p2, v1, :cond_10

    const-string v1, "AUTO"

    goto :goto_14

    .line 3
    :cond_10
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    :goto_14
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "x"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_as"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/ads/AdSize;-><init>(IILjava/lang/String;)V

    return-void
.end method

.method constructor <init>(IILjava/lang/String;)V
    .registers 5

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-gez p1, :cond_25

    const/4 v0, -0x1

    if-eq p1, v0, :cond_25

    const/4 v0, -0x3

    if-ne p1, v0, :cond_c

    goto :goto_25

    .line 8
    :cond_c
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const/16 p3, 0x25

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "Invalid width for AdSize: "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_25
    :goto_25
    if-gez p2, :cond_47

    const/4 v0, -0x2

    if-eq p2, v0, :cond_47

    const/4 v0, -0x4

    if-ne p2, v0, :cond_2e

    goto :goto_47

    .line 10
    :cond_2e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/16 p3, 0x26

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "Invalid height for AdSize: "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_47
    :goto_47
    iput p1, p0, Lcom/google/android/gms/ads/AdSize;->width:I

    .line 12
    iput p2, p0, Lcom/google/android/gms/ads/AdSize;->height:I

    .line 13
    iput-object p3, p0, Lcom/google/android/gms/ads/AdSize;->zzacy:Ljava/lang/String;

    return-void
.end method

.method public static getCurrentOrientationAnchoredAdaptiveBannerAdSize(Landroid/content/Context;I)Lcom/google/android/gms/ads/AdSize;
    .registers 4

    const/16 v0, 0x32

    const/4 v1, 0x0

    .line 24
    invoke-static {p0, p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzbbg;->zza(Landroid/content/Context;III)Lcom/google/android/gms/ads/AdSize;

    move-result-object p0

    const/4 p1, 0x1

    .line 25
    iput-boolean p1, p0, Lcom/google/android/gms/ads/AdSize;->zzacz:Z

    return-object p0
.end method

.method public static getCurrentOrientationBannerAdSizeWithWidth(Landroid/content/Context;I)Lcom/google/android/gms/ads/AdSize;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 29
    invoke-static {p0, p1}, Lcom/google/android/gms/ads/AdSize;->getCurrentOrientationAnchoredAdaptiveBannerAdSize(Landroid/content/Context;I)Lcom/google/android/gms/ads/AdSize;

    move-result-object p0

    return-object p0
.end method

.method public static getCurrentOrientationInlineAdaptiveBannerAdSize(Landroid/content/Context;I)Lcom/google/android/gms/ads/AdSize;
    .registers 4

    const/4 v0, 0x0

    .line 47
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzbbg;->zze(Landroid/content/Context;I)I

    move-result p0

    const/4 v1, -0x1

    if-ne p0, v1, :cond_b

    .line 49
    sget-object p0, Lcom/google/android/gms/ads/AdSize;->INVALID:Lcom/google/android/gms/ads/AdSize;

    return-object p0

    .line 50
    :cond_b
    new-instance v1, Lcom/google/android/gms/ads/AdSize;

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V

    .line 51
    iput p0, v1, Lcom/google/android/gms/ads/AdSize;->zzadb:I

    const/4 p0, 0x1

    .line 52
    iput-boolean p0, v1, Lcom/google/android/gms/ads/AdSize;->zzada:Z

    return-object v1
.end method

.method public static getLandscapeAnchoredAdaptiveBannerAdSize(Landroid/content/Context;I)Lcom/google/android/gms/ads/AdSize;
    .registers 4

    const/16 v0, 0x32

    const/4 v1, 0x2

    .line 20
    invoke-static {p0, p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzbbg;->zza(Landroid/content/Context;III)Lcom/google/android/gms/ads/AdSize;

    move-result-object p0

    const/4 p1, 0x1

    .line 21
    iput-boolean p1, p0, Lcom/google/android/gms/ads/AdSize;->zzacz:Z

    return-object p0
.end method

.method public static getLandscapeBannerAdSizeWithWidth(Landroid/content/Context;I)Lcom/google/android/gms/ads/AdSize;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 28
    invoke-static {p0, p1}, Lcom/google/android/gms/ads/AdSize;->getLandscapeAnchoredAdaptiveBannerAdSize(Landroid/content/Context;I)Lcom/google/android/gms/ads/AdSize;

    move-result-object p0

    return-object p0
.end method

.method public static getLandscapeInlineAdaptiveBannerAdSize(Landroid/content/Context;I)Lcom/google/android/gms/ads/AdSize;
    .registers 4

    const/4 v0, 0x2

    .line 39
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzbbg;->zze(Landroid/content/Context;I)I

    move-result p0

    .line 40
    new-instance v0, Lcom/google/android/gms/ads/AdSize;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V

    const/4 p1, -0x1

    if-ne p0, p1, :cond_11

    .line 42
    sget-object p0, Lcom/google/android/gms/ads/AdSize;->INVALID:Lcom/google/android/gms/ads/AdSize;

    return-object p0

    .line 43
    :cond_11
    iput p0, v0, Lcom/google/android/gms/ads/AdSize;->zzadb:I

    const/4 p0, 0x1

    .line 44
    iput-boolean p0, v0, Lcom/google/android/gms/ads/AdSize;->zzada:Z

    return-object v0
.end method

.method public static getPortraitAnchoredAdaptiveBannerAdSize(Landroid/content/Context;I)Lcom/google/android/gms/ads/AdSize;
    .registers 4

    const/4 v0, 0x1

    const/16 v1, 0x32

    .line 16
    invoke-static {p0, p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbbg;->zza(Landroid/content/Context;III)Lcom/google/android/gms/ads/AdSize;

    move-result-object p0

    .line 17
    iput-boolean v0, p0, Lcom/google/android/gms/ads/AdSize;->zzacz:Z

    return-object p0
.end method

.method public static getPortraitBannerAdSizeWithWidth(Landroid/content/Context;I)Lcom/google/android/gms/ads/AdSize;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 27
    invoke-static {p0, p1}, Lcom/google/android/gms/ads/AdSize;->getPortraitAnchoredAdaptiveBannerAdSize(Landroid/content/Context;I)Lcom/google/android/gms/ads/AdSize;

    move-result-object p0

    return-object p0
.end method

.method public static getPortraitInlineAdaptiveBannerAdSize(Landroid/content/Context;I)Lcom/google/android/gms/ads/AdSize;
    .registers 5

    const/4 v0, 0x1

    .line 31
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzbbg;->zze(Landroid/content/Context;I)I

    move-result p0

    .line 32
    new-instance v1, Lcom/google/android/gms/ads/AdSize;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V

    const/4 p1, -0x1

    if-ne p0, p1, :cond_11

    .line 34
    sget-object p0, Lcom/google/android/gms/ads/AdSize;->INVALID:Lcom/google/android/gms/ads/AdSize;

    return-object p0

    .line 35
    :cond_11
    iput p0, v1, Lcom/google/android/gms/ads/AdSize;->zzadb:I

    .line 36
    iput-boolean v0, v1, Lcom/google/android/gms/ads/AdSize;->zzada:Z

    return-object v1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 56
    :cond_4
    instance-of v1, p1, Lcom/google/android/gms/ads/AdSize;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 58
    :cond_a
    check-cast p1, Lcom/google/android/gms/ads/AdSize;

    .line 59
    iget v1, p0, Lcom/google/android/gms/ads/AdSize;->width:I

    iget v3, p1, Lcom/google/android/gms/ads/AdSize;->width:I

    if-ne v1, v3, :cond_23

    iget v1, p0, Lcom/google/android/gms/ads/AdSize;->height:I

    iget v3, p1, Lcom/google/android/gms/ads/AdSize;->height:I

    if-ne v1, v3, :cond_23

    iget-object v1, p0, Lcom/google/android/gms/ads/AdSize;->zzacy:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/ads/AdSize;->zzacy:Ljava/lang/String;

    .line 60
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_23

    return v0

    :cond_23
    return v2
.end method

.method public final getHeight()I
    .registers 2

    .line 62
    iget v0, p0, Lcom/google/android/gms/ads/AdSize;->height:I

    return v0
.end method

.method public final getHeightInPixels(Landroid/content/Context;)I
    .registers 4

    .line 63
    iget v0, p0, Lcom/google/android/gms/ads/AdSize;->height:I

    const/4 v1, -0x4

    if-eq v0, v1, :cond_22

    const/4 v1, -0x3

    if-eq v0, v1, :cond_22

    const/4 v1, -0x2

    if-eq v0, v1, :cond_15

    .line 66
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpt()Lcom/google/android/gms/internal/ads/zzbbg;

    iget v0, p0, Lcom/google/android/gms/ads/AdSize;->height:I

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzbbg;->zzc(Landroid/content/Context;I)I

    move-result p1

    return p1

    .line 64
    :cond_15
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzvn;->zzc(Landroid/util/DisplayMetrics;)I

    move-result p1

    return p1

    :cond_22
    const/4 p1, -0x1

    return p1
.end method

.method public final getWidth()I
    .registers 2

    .line 67
    iget v0, p0, Lcom/google/android/gms/ads/AdSize;->width:I

    return v0
.end method

.method public final getWidthInPixels(Landroid/content/Context;)I
    .registers 5

    .line 68
    iget v0, p0, Lcom/google/android/gms/ads/AdSize;->width:I

    const/4 v1, -0x4

    const/4 v2, -0x1

    if-eq v0, v1, :cond_22

    const/4 v1, -0x3

    if-eq v0, v1, :cond_22

    if-eq v0, v2, :cond_15

    .line 71
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpt()Lcom/google/android/gms/internal/ads/zzbbg;

    iget v0, p0, Lcom/google/android/gms/ads/AdSize;->width:I

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzbbg;->zzc(Landroid/content/Context;I)I

    move-result p1

    return p1

    .line 69
    :cond_15
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzvn;->zzb(Landroid/util/DisplayMetrics;)I

    move-result p1

    return p1

    :cond_22
    return v2
.end method

.method public final hashCode()I
    .registers 2

    .line 72
    iget-object v0, p0, Lcom/google/android/gms/ads/AdSize;->zzacy:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final isAutoHeight()Z
    .registers 3

    .line 73
    iget v0, p0, Lcom/google/android/gms/ads/AdSize;->height:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    return v0

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public final isFluid()Z
    .registers 3

    .line 75
    iget v0, p0, Lcom/google/android/gms/ads/AdSize;->width:I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_c

    iget v0, p0, Lcom/google/android/gms/ads/AdSize;->height:I

    const/4 v1, -0x4

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public final isFullWidth()Z
    .registers 3

    .line 74
    iget v0, p0, Lcom/google/android/gms/ads/AdSize;->width:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    return v0

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .line 83
    iget-object v0, p0, Lcom/google/android/gms/ads/AdSize;->zzacy:Ljava/lang/String;

    return-object v0
.end method

.method final zzc(Z)V
    .registers 2

    const/4 p1, 0x1

    .line 78
    iput-boolean p1, p0, Lcom/google/android/gms/ads/AdSize;->zzada:Z

    return-void
.end method

.method final zzds()Z
    .registers 2

    .line 76
    iget-boolean v0, p0, Lcom/google/android/gms/ads/AdSize;->zzacz:Z

    return v0
.end method

.method final zzdt()Z
    .registers 2

    .line 77
    iget-boolean v0, p0, Lcom/google/android/gms/ads/AdSize;->zzada:Z

    return v0
.end method

.method final zzdu()I
    .registers 2

    .line 82
    iget v0, p0, Lcom/google/android/gms/ads/AdSize;->zzadb:I

    return v0
.end method

.method final zzr(I)V
    .registers 2

    .line 80
    iput p1, p0, Lcom/google/android/gms/ads/AdSize;->zzadb:I

    return-void
.end method
