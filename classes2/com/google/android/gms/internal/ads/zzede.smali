.class public final Lcom/google/android/gms/internal/ads/zzede;
.super Lcom/google/android/gms/internal/ads/zzejz;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzell;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzede$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzejz<",
        "Lcom/google/android/gms/internal/ads/zzede;",
        "Lcom/google/android/gms/internal/ads/zzede$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzell;"
    }
.end annotation


# static fields
.field private static volatile zzel:Lcom/google/android/gms/internal/ads/zzelw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzelw<",
            "Lcom/google/android/gms/internal/ads/zzede;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzhxa:Lcom/google/android/gms/internal/ads/zzede;


# instance fields
.field private zzhwq:I

.field private zzhwy:Lcom/google/android/gms/internal/ads/zzedi;

.field private zzhwz:Lcom/google/android/gms/internal/ads/zzeet;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 39
    new-instance v0, Lcom/google/android/gms/internal/ads/zzede;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzede;-><init>()V

    .line 40
    sput-object v0, Lcom/google/android/gms/internal/ads/zzede;->zzhxa:Lcom/google/android/gms/internal/ads/zzede;

    .line 41
    const-class v1, Lcom/google/android/gms/internal/ads/zzede;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzejz;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzejz;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzejz;-><init>()V

    return-void
.end method

.method private final setVersion(I)V
    .registers 2

    .line 4
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzede;->zzhwq:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzede;I)V
    .registers 2

    .line 36
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzede;->setVersion(I)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzede;Lcom/google/android/gms/internal/ads/zzedi;)V
    .registers 2

    .line 37
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzede;->zza(Lcom/google/android/gms/internal/ads/zzedi;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzede;Lcom/google/android/gms/internal/ads/zzeet;)V
    .registers 2

    .line 38
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzede;->zza(Lcom/google/android/gms/internal/ads/zzeet;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzedi;)V
    .registers 2

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzede;->zzhwy:Lcom/google/android/gms/internal/ads/zzedi;

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzeet;)V
    .registers 2

    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzede;->zzhwz:Lcom/google/android/gms/internal/ads/zzeet;

    return-void
.end method

.method public static zzazn()Lcom/google/android/gms/internal/ads/zzede$zza;
    .registers 1

    .line 15
    sget-object v0, Lcom/google/android/gms/internal/ads/zzede;->zzhxa:Lcom/google/android/gms/internal/ads/zzede;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzejz;->zzbgf()Lcom/google/android/gms/internal/ads/zzejz$zzb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzede$zza;

    return-object v0
.end method

.method static synthetic zzazo()Lcom/google/android/gms/internal/ads/zzede;
    .registers 1

    .line 35
    sget-object v0, Lcom/google/android/gms/internal/ads/zzede;->zzhxa:Lcom/google/android/gms/internal/ads/zzede;

    return-object v0
.end method

.method public static zze(Lcom/google/android/gms/internal/ads/zzeip;Lcom/google/android/gms/internal/ads/zzejm;)Lcom/google/android/gms/internal/ads/zzede;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzekj;
        }
    .end annotation

    .line 14
    sget-object v0, Lcom/google/android/gms/internal/ads/zzede;->zzhxa:Lcom/google/android/gms/internal/ads/zzede;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzejz;->zza(Lcom/google/android/gms/internal/ads/zzejz;Lcom/google/android/gms/internal/ads/zzeip;Lcom/google/android/gms/internal/ads/zzejm;)Lcom/google/android/gms/internal/ads/zzejz;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzede;

    return-object p0
.end method


# virtual methods
.method public final getVersion()I
    .registers 2

    .line 3
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzede;->zzhwq:I

    return v0
.end method

.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 16
    sget-object p2, Lcom/google/android/gms/internal/ads/zzedf;->zzdv:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_5a

    .line 34
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_10
    return-object p2

    .line 32
    :pswitch_11
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 23
    :pswitch_16
    sget-object p1, Lcom/google/android/gms/internal/ads/zzede;->zzel:Lcom/google/android/gms/internal/ads/zzelw;

    if-nez p1, :cond_2f

    .line 25
    const-class p2, Lcom/google/android/gms/internal/ads/zzede;

    monitor-enter p2

    .line 26
    :try_start_1d
    sget-object p1, Lcom/google/android/gms/internal/ads/zzede;->zzel:Lcom/google/android/gms/internal/ads/zzelw;

    if-nez p1, :cond_2a

    .line 28
    new-instance p1, Lcom/google/android/gms/internal/ads/zzejz$zza;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzede;->zzhxa:Lcom/google/android/gms/internal/ads/zzede;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzejz$zza;-><init>(Lcom/google/android/gms/internal/ads/zzejz;)V

    .line 29
    sput-object p1, Lcom/google/android/gms/internal/ads/zzede;->zzel:Lcom/google/android/gms/internal/ads/zzelw;

    .line 30
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

    .line 22
    :pswitch_30
    sget-object p1, Lcom/google/android/gms/internal/ads/zzede;->zzhxa:Lcom/google/android/gms/internal/ads/zzede;

    return-object p1

    :pswitch_33
    const/4 p1, 0x3

    .line 19
    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzhwq"

    aput-object v0, p1, p2

    const-string p2, "zzhwy"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzhwz"

    aput-object p3, p1, p2

    .line 21
    sget-object p2, Lcom/google/android/gms/internal/ads/zzede;->zzhxa:Lcom/google/android/gms/internal/ads/zzede;

    const-string p3, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002\t\u0003\t"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzede;->zza(Lcom/google/android/gms/internal/ads/zzelj;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 18
    :pswitch_4d
    new-instance p1, Lcom/google/android/gms/internal/ads/zzede$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzede$zza;-><init>(Lcom/google/android/gms/internal/ads/zzedf;)V

    return-object p1

    .line 17
    :pswitch_53
    new-instance p1, Lcom/google/android/gms/internal/ads/zzede;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzede;-><init>()V

    return-object p1

    nop

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_53
        :pswitch_4d
        :pswitch_33
        :pswitch_30
        :pswitch_16
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method

.method public final zzazl()Lcom/google/android/gms/internal/ads/zzedi;
    .registers 2

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzede;->zzhwy:Lcom/google/android/gms/internal/ads/zzedi;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzedi;->zzazu()Lcom/google/android/gms/internal/ads/zzedi;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public final zzazm()Lcom/google/android/gms/internal/ads/zzeet;
    .registers 2

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzede;->zzhwz:Lcom/google/android/gms/internal/ads/zzeet;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeet;->zzbbm()Lcom/google/android/gms/internal/ads/zzeet;

    move-result-object v0

    :cond_8
    return-object v0
.end method
