.class public final enum Lcom/google/android/gms/internal/ads/zzua$zzc$zza;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeke;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzua$zzc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/ads/zzua$zzc$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzeke;"
    }
.end annotation


# static fields
.field public static final enum zzbzu:Lcom/google/android/gms/internal/ads/zzua$zzc$zza;

.field public static final enum zzbzv:Lcom/google/android/gms/internal/ads/zzua$zzc$zza;

.field public static final enum zzbzw:Lcom/google/android/gms/internal/ads/zzua$zzc$zza;

.field private static final enum zzbzx:Lcom/google/android/gms/internal/ads/zzua$zzc$zza;

.field private static final enum zzbzy:Lcom/google/android/gms/internal/ads/zzua$zzc$zza;

.field public static final enum zzbzz:Lcom/google/android/gms/internal/ads/zzua$zzc$zza;

.field private static final enum zzcaa:Lcom/google/android/gms/internal/ads/zzua$zzc$zza;

.field private static final enum zzcab:Lcom/google/android/gms/internal/ads/zzua$zzc$zza;

.field private static final enum zzcac:Lcom/google/android/gms/internal/ads/zzua$zzc$zza;

.field public static final enum zzcad:Lcom/google/android/gms/internal/ads/zzua$zzc$zza;

.field private static final enum zzcae:Lcom/google/android/gms/internal/ads/zzua$zzc$zza;

.field private static final synthetic zzcaf:[Lcom/google/android/gms/internal/ads/zzua$zzc$zza;

.field private static final zzes:Lcom/google/android/gms/internal/ads/zzekd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzekd<",
            "Lcom/google/android/gms/internal/ads/zzua$zzc$zza;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 13

    .line 30
    new-instance v0, Lcom/google/android/gms/internal/ads/zzua$zzc$zza;

    const/4 v1, 0x0

    const-string v2, "AD_FORMAT_TYPE_UNSPECIFIED"

    invoke-direct {v0, v2, v1, v1}, Lcom/google/android/gms/internal/ads/zzua$zzc$zza;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzua$zzc$zza;->zzbzu:Lcom/google/android/gms/internal/ads/zzua$zzc$zza;

    .line 31
    new-instance v0, Lcom/google/android/gms/internal/ads/zzua$zzc$zza;

    const/4 v2, 0x1

    const-string v3, "BANNER"

    invoke-direct {v0, v3, v2, v2}, Lcom/google/android/gms/internal/ads/zzua$zzc$zza;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzua$zzc$zza;->zzbzv:Lcom/google/android/gms/internal/ads/zzua$zzc$zza;

    .line 32
    new-instance v0, Lcom/google/android/gms/internal/ads/zzua$zzc$zza;

    const/4 v3, 0x2

    const-string v4, "INTERSTITIAL"

    invoke-direct {v0, v4, v3, v3}, Lcom/google/android/gms/internal/ads/zzua$zzc$zza;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzua$zzc$zza;->zzbzw:Lcom/google/android/gms/internal/ads/zzua$zzc$zza;

    .line 33
    new-instance v0, Lcom/google/android/gms/internal/ads/zzua$zzc$zza;

    const/4 v4, 0x3

    const-string v5, "NATIVE_EXPRESS"

    invoke-direct {v0, v5, v4, v4}, Lcom/google/android/gms/internal/ads/zzua$zzc$zza;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzua$zzc$zza;->zzbzx:Lcom/google/android/gms/internal/ads/zzua$zzc$zza;

    .line 34
    new-instance v0, Lcom/google/android/gms/internal/ads/zzua$zzc$zza;

    const/4 v5, 0x4

    const-string v6, "NATIVE_CONTENT"

    invoke-direct {v0, v6, v5, v5}, Lcom/google/android/gms/internal/ads/zzua$zzc$zza;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzua$zzc$zza;->zzbzy:Lcom/google/android/gms/internal/ads/zzua$zzc$zza;

    .line 35
    new-instance v0, Lcom/google/android/gms/internal/ads/zzua$zzc$zza;

    const/4 v6, 0x5

    const-string v7, "NATIVE_APP_INSTALL"

    invoke-direct {v0, v7, v6, v6}, Lcom/google/android/gms/internal/ads/zzua$zzc$zza;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzua$zzc$zza;->zzbzz:Lcom/google/android/gms/internal/ads/zzua$zzc$zza;

    .line 36
    new-instance v0, Lcom/google/android/gms/internal/ads/zzua$zzc$zza;

    const/4 v7, 0x6

    const-string v8, "NATIVE_CUSTOM_TEMPLATE"

    invoke-direct {v0, v8, v7, v7}, Lcom/google/android/gms/internal/ads/zzua$zzc$zza;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzua$zzc$zza;->zzcaa:Lcom/google/android/gms/internal/ads/zzua$zzc$zza;

    .line 37
    new-instance v0, Lcom/google/android/gms/internal/ads/zzua$zzc$zza;

    const/4 v8, 0x7

    const-string v9, "DFP_BANNER"

    invoke-direct {v0, v9, v8, v8}, Lcom/google/android/gms/internal/ads/zzua$zzc$zza;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzua$zzc$zza;->zzcab:Lcom/google/android/gms/internal/ads/zzua$zzc$zza;

    .line 38
    new-instance v0, Lcom/google/android/gms/internal/ads/zzua$zzc$zza;

    const/16 v9, 0x8

    const-string v10, "DFP_INTERSTITIAL"

    invoke-direct {v0, v10, v9, v9}, Lcom/google/android/gms/internal/ads/zzua$zzc$zza;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzua$zzc$zza;->zzcac:Lcom/google/android/gms/internal/ads/zzua$zzc$zza;

    .line 39
    new-instance v0, Lcom/google/android/gms/internal/ads/zzua$zzc$zza;

    const/16 v10, 0x9

    const-string v11, "REWARD_BASED_VIDEO_AD"

    invoke-direct {v0, v11, v10, v10}, Lcom/google/android/gms/internal/ads/zzua$zzc$zza;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzua$zzc$zza;->zzcad:Lcom/google/android/gms/internal/ads/zzua$zzc$zza;

    .line 40
    new-instance v0, Lcom/google/android/gms/internal/ads/zzua$zzc$zza;

    const/16 v11, 0xa

    const-string v12, "BANNER_SEARCH_ADS"

    invoke-direct {v0, v12, v11, v11}, Lcom/google/android/gms/internal/ads/zzua$zzc$zza;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzua$zzc$zza;->zzcae:Lcom/google/android/gms/internal/ads/zzua$zzc$zza;

    const/16 v0, 0xb

    .line 41
    new-array v0, v0, [Lcom/google/android/gms/internal/ads/zzua$zzc$zza;

    sget-object v12, Lcom/google/android/gms/internal/ads/zzua$zzc$zza;->zzbzu:Lcom/google/android/gms/internal/ads/zzua$zzc$zza;

    aput-object v12, v0, v1

    sget-object v1, Lcom/google/android/gms/internal/ads/zzua$zzc$zza;->zzbzv:Lcom/google/android/gms/internal/ads/zzua$zzc$zza;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/ads/zzua$zzc$zza;->zzbzw:Lcom/google/android/gms/internal/ads/zzua$zzc$zza;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gms/internal/ads/zzua$zzc$zza;->zzbzx:Lcom/google/android/gms/internal/ads/zzua$zzc$zza;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gms/internal/ads/zzua$zzc$zza;->zzbzy:Lcom/google/android/gms/internal/ads/zzua$zzc$zza;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/gms/internal/ads/zzua$zzc$zza;->zzbzz:Lcom/google/android/gms/internal/ads/zzua$zzc$zza;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/gms/internal/ads/zzua$zzc$zza;->zzcaa:Lcom/google/android/gms/internal/ads/zzua$zzc$zza;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/android/gms/internal/ads/zzua$zzc$zza;->zzcab:Lcom/google/android/gms/internal/ads/zzua$zzc$zza;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/android/gms/internal/ads/zzua$zzc$zza;->zzcac:Lcom/google/android/gms/internal/ads/zzua$zzc$zza;

    aput-object v1, v0, v9

    sget-object v1, Lcom/google/android/gms/internal/ads/zzua$zzc$zza;->zzcad:Lcom/google/android/gms/internal/ads/zzua$zzc$zza;

    aput-object v1, v0, v10

    sget-object v1, Lcom/google/android/gms/internal/ads/zzua$zzc$zza;->zzcae:Lcom/google/android/gms/internal/ads/zzua$zzc$zza;

    aput-object v1, v0, v11

    sput-object v0, Lcom/google/android/gms/internal/ads/zzua$zzc$zza;->zzcaf:[Lcom/google/android/gms/internal/ads/zzua$zzc$zza;

    .line 42
    new-instance v0, Lcom/google/android/gms/internal/ads/zzuh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzuh;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzua$zzc$zza;->zzes:Lcom/google/android/gms/internal/ads/zzekd;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 28
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzua$zzc$zza;->value:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/zzua$zzc$zza;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzua$zzc$zza;->zzcaf:[Lcom/google/android/gms/internal/ads/zzua$zzc$zza;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/zzua$zzc$zza;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/zzua$zzc$zza;

    return-object v0
.end method

.method public static zzce(I)Lcom/google/android/gms/internal/ads/zzua$zzc$zza;
    .registers 1

    packed-switch p0, :pswitch_data_26

    const/4 p0, 0x0

    return-object p0

    .line 14
    :pswitch_5
    sget-object p0, Lcom/google/android/gms/internal/ads/zzua$zzc$zza;->zzcae:Lcom/google/android/gms/internal/ads/zzua$zzc$zza;

    return-object p0

    .line 13
    :pswitch_8
    sget-object p0, Lcom/google/android/gms/internal/ads/zzua$zzc$zza;->zzcad:Lcom/google/android/gms/internal/ads/zzua$zzc$zza;

    return-object p0

    .line 12
    :pswitch_b
    sget-object p0, Lcom/google/android/gms/internal/ads/zzua$zzc$zza;->zzcac:Lcom/google/android/gms/internal/ads/zzua$zzc$zza;

    return-object p0

    .line 11
    :pswitch_e
    sget-object p0, Lcom/google/android/gms/internal/ads/zzua$zzc$zza;->zzcab:Lcom/google/android/gms/internal/ads/zzua$zzc$zza;

    return-object p0

    .line 10
    :pswitch_11
    sget-object p0, Lcom/google/android/gms/internal/ads/zzua$zzc$zza;->zzcaa:Lcom/google/android/gms/internal/ads/zzua$zzc$zza;

    return-object p0

    .line 9
    :pswitch_14
    sget-object p0, Lcom/google/android/gms/internal/ads/zzua$zzc$zza;->zzbzz:Lcom/google/android/gms/internal/ads/zzua$zzc$zza;

    return-object p0

    .line 8
    :pswitch_17
    sget-object p0, Lcom/google/android/gms/internal/ads/zzua$zzc$zza;->zzbzy:Lcom/google/android/gms/internal/ads/zzua$zzc$zza;

    return-object p0

    .line 7
    :pswitch_1a
    sget-object p0, Lcom/google/android/gms/internal/ads/zzua$zzc$zza;->zzbzx:Lcom/google/android/gms/internal/ads/zzua$zzc$zza;

    return-object p0

    .line 6
    :pswitch_1d
    sget-object p0, Lcom/google/android/gms/internal/ads/zzua$zzc$zza;->zzbzw:Lcom/google/android/gms/internal/ads/zzua$zzc$zza;

    return-object p0

    .line 5
    :pswitch_20
    sget-object p0, Lcom/google/android/gms/internal/ads/zzua$zzc$zza;->zzbzv:Lcom/google/android/gms/internal/ads/zzua$zzc$zza;

    return-object p0

    .line 4
    :pswitch_23
    sget-object p0, Lcom/google/android/gms/internal/ads/zzua$zzc$zza;->zzbzu:Lcom/google/android/gms/internal/ads/zzua$zzc$zza;

    return-object p0

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method public static zzw()Lcom/google/android/gms/internal/ads/zzekg;
    .registers 1

    .line 16
    sget-object v0, Lcom/google/android/gms/internal/ads/zzui;->zzeu:Lcom/google/android/gms/internal/ads/zzekg;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 3

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 20
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " number="

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzua$zzc$zza;->value:I

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " name="

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzua$zzc$zza;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzv()I
    .registers 2

    .line 2
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzua$zzc$zza;->value:I

    return v0
.end method
