.class public final Lcom/google/android/gms/internal/ads/zzduc;
.super Lcom/google/android/gms/internal/ads/zzejz;
.source "com.google.android.gms:play-services-gass@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzell;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzduc$zza;,
        Lcom/google/android/gms/internal/ads/zzduc$zzb;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzejz<",
        "Lcom/google/android/gms/internal/ads/zzduc;",
        "Lcom/google/android/gms/internal/ads/zzduc$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzell;"
    }
.end annotation


# static fields
.field private static volatile zzel:Lcom/google/android/gms/internal/ads/zzelw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzelw<",
            "Lcom/google/android/gms/internal/ads/zzduc;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzhnk:Lcom/google/android/gms/internal/ads/zzduc;


# instance fields
.field private zzdw:I

.field private zzdx:Ljava/lang/String;

.field private zzhnh:I

.field private zzhni:Ljava/lang/String;

.field private zzhnj:Lcom/google/android/gms/internal/ads/zzdty;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 41
    new-instance v0, Lcom/google/android/gms/internal/ads/zzduc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzduc;-><init>()V

    .line 42
    sput-object v0, Lcom/google/android/gms/internal/ads/zzduc;->zzhnk:Lcom/google/android/gms/internal/ads/zzduc;

    .line 43
    const-class v1, Lcom/google/android/gms/internal/ads/zzduc;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzejz;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzejz;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzejz;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzduc;->zzdx:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzduc;->zzhni:Ljava/lang/String;

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzdty;)V
    .registers 2

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzduc;->zzhnj:Lcom/google/android/gms/internal/ads/zzdty;

    .line 14
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzduc;->zzdw:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzduc;->zzdw:I

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzduc$zzb;)V
    .registers 2

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzduc$zzb;->zzv()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzduc;->zzhnh:I

    .line 6
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzduc;->zzdw:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzduc;->zzdw:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzduc;Lcom/google/android/gms/internal/ads/zzdty;)V
    .registers 2

    .line 40
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzduc;->zza(Lcom/google/android/gms/internal/ads/zzdty;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzduc;Lcom/google/android/gms/internal/ads/zzduc$zzb;)V
    .registers 2

    .line 38
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzduc;->zza(Lcom/google/android/gms/internal/ads/zzduc$zzb;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzduc;Ljava/lang/String;)V
    .registers 2

    .line 39
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzduc;->zzp(Ljava/lang/String;)V

    return-void
.end method

.method public static zzawh()Lcom/google/android/gms/internal/ads/zzduc$zza;
    .registers 1

    .line 16
    sget-object v0, Lcom/google/android/gms/internal/ads/zzduc;->zzhnk:Lcom/google/android/gms/internal/ads/zzduc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzejz;->zzbgf()Lcom/google/android/gms/internal/ads/zzejz$zzb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzduc$zza;

    return-object v0
.end method

.method static synthetic zzawi()Lcom/google/android/gms/internal/ads/zzduc;
    .registers 1

    .line 37
    sget-object v0, Lcom/google/android/gms/internal/ads/zzduc;->zzhnk:Lcom/google/android/gms/internal/ads/zzduc;

    return-object v0
.end method

.method private final zzp(Ljava/lang/String;)V
    .registers 3

    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzduc;->zzdw:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzduc;->zzdw:I

    .line 10
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzduc;->zzdx:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 17
    sget-object p2, Lcom/google/android/gms/internal/ads/zzdud;->zzdv:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_6a

    .line 36
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_10
    return-object p2

    .line 34
    :pswitch_11
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 25
    :pswitch_16
    sget-object p1, Lcom/google/android/gms/internal/ads/zzduc;->zzel:Lcom/google/android/gms/internal/ads/zzelw;

    if-nez p1, :cond_2f

    .line 27
    const-class p2, Lcom/google/android/gms/internal/ads/zzduc;

    monitor-enter p2

    .line 28
    :try_start_1d
    sget-object p1, Lcom/google/android/gms/internal/ads/zzduc;->zzel:Lcom/google/android/gms/internal/ads/zzelw;

    if-nez p1, :cond_2a

    .line 30
    new-instance p1, Lcom/google/android/gms/internal/ads/zzejz$zza;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzduc;->zzhnk:Lcom/google/android/gms/internal/ads/zzduc;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzejz$zza;-><init>(Lcom/google/android/gms/internal/ads/zzejz;)V

    .line 31
    sput-object p1, Lcom/google/android/gms/internal/ads/zzduc;->zzel:Lcom/google/android/gms/internal/ads/zzelw;

    .line 32
    :cond_2a
    monitor-exit p2

    goto :goto_2f

    :catchall_2c
    move-exception p1

    monitor-exit p2
    :try_end_2e
    .catchall {:try_start_1d .. :try_end_2e} :catchall_2c

    throw p1

    :cond_2f
    :goto_2f
    return-object p1

    .line 24
    :pswitch_30
    sget-object p1, Lcom/google/android/gms/internal/ads/zzduc;->zzhnk:Lcom/google/android/gms/internal/ads/zzduc;

    return-object p1

    :pswitch_33
    const/4 p1, 0x6

    .line 20
    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzdw"

    aput-object v0, p1, p2

    const-string p2, "zzhnh"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    .line 21
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzduc$zzb;->zzw()Lcom/google/android/gms/internal/ads/zzekg;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzdx"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzhni"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzhnj"

    aput-object p3, p1, p2

    .line 23
    sget-object p2, Lcom/google/android/gms/internal/ads/zzduc;->zzhnk:Lcom/google/android/gms/internal/ads/zzduc;

    const-string p3, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u100c\u0000\u0002\u1008\u0001\u0003\u1008\u0002\u0004\u1009\u0003"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzduc;->zza(Lcom/google/android/gms/internal/ads/zzelj;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 19
    :pswitch_5e
    new-instance p1, Lcom/google/android/gms/internal/ads/zzduc$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzduc$zza;-><init>(Lcom/google/android/gms/internal/ads/zzdud;)V

    return-object p1

    .line 18
    :pswitch_64
    new-instance p1, Lcom/google/android/gms/internal/ads/zzduc;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzduc;-><init>()V

    return-object p1

    :pswitch_data_6a
    .packed-switch 0x1
        :pswitch_64
        :pswitch_5e
        :pswitch_33
        :pswitch_30
        :pswitch_16
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method
