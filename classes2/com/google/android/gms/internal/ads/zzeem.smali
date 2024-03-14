.class public final Lcom/google/android/gms/internal/ads/zzeem;
.super Lcom/google/android/gms/internal/ads/zzejz;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzell;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzeem$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzejz<",
        "Lcom/google/android/gms/internal/ads/zzeem;",
        "Lcom/google/android/gms/internal/ads/zzeem$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzell;"
    }
.end annotation


# static fields
.field private static volatile zzel:Lcom/google/android/gms/internal/ads/zzelw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzelw<",
            "Lcom/google/android/gms/internal/ads/zzeem;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzhyj:Lcom/google/android/gms/internal/ads/zzeem;


# instance fields
.field private zzhwq:I

.field private zzhxz:Lcom/google/android/gms/internal/ads/zzeei;

.field private zzhyh:Lcom/google/android/gms/internal/ads/zzeip;

.field private zzhyi:Lcom/google/android/gms/internal/ads/zzeip;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 47
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeem;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzeem;-><init>()V

    .line 48
    sput-object v0, Lcom/google/android/gms/internal/ads/zzeem;->zzhyj:Lcom/google/android/gms/internal/ads/zzeem;

    .line 49
    const-class v1, Lcom/google/android/gms/internal/ads/zzeem;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzejz;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzejz;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzejz;-><init>()V

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzeip;->zzier:Lcom/google/android/gms/internal/ads/zzeip;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzeem;->zzhyh:Lcom/google/android/gms/internal/ads/zzeip;

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/ads/zzeip;->zzier:Lcom/google/android/gms/internal/ads/zzeip;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzeem;->zzhyi:Lcom/google/android/gms/internal/ads/zzeip;

    return-void
.end method

.method private final setVersion(I)V
    .registers 2

    .line 6
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzeem;->zzhwq:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzeem;I)V
    .registers 2

    .line 43
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzeem;->setVersion(I)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzeem;Lcom/google/android/gms/internal/ads/zzeei;)V
    .registers 2

    .line 44
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzeem;->zzb(Lcom/google/android/gms/internal/ads/zzeei;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzeem;Lcom/google/android/gms/internal/ads/zzeip;)V
    .registers 2

    .line 45
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzeem;->zzy(Lcom/google/android/gms/internal/ads/zzeip;)V

    return-void
.end method

.method private final zzb(Lcom/google/android/gms/internal/ads/zzeei;)V
    .registers 2

    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeem;->zzhxz:Lcom/google/android/gms/internal/ads/zzeei;

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzeem;Lcom/google/android/gms/internal/ads/zzeip;)V
    .registers 2

    .line 46
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzeem;->zzz(Lcom/google/android/gms/internal/ads/zzeip;)V

    return-void
.end method

.method public static zzbbc()Lcom/google/android/gms/internal/ads/zzeem$zza;
    .registers 1

    .line 21
    sget-object v0, Lcom/google/android/gms/internal/ads/zzeem;->zzhyj:Lcom/google/android/gms/internal/ads/zzeem;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzejz;->zzbgf()Lcom/google/android/gms/internal/ads/zzejz$zzb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzeem$zza;

    return-object v0
.end method

.method public static zzbbd()Lcom/google/android/gms/internal/ads/zzeem;
    .registers 1

    .line 41
    sget-object v0, Lcom/google/android/gms/internal/ads/zzeem;->zzhyj:Lcom/google/android/gms/internal/ads/zzeem;

    return-object v0
.end method

.method static synthetic zzbbe()Lcom/google/android/gms/internal/ads/zzeem;
    .registers 1

    .line 42
    sget-object v0, Lcom/google/android/gms/internal/ads/zzeem;->zzhyj:Lcom/google/android/gms/internal/ads/zzeem;

    return-object v0
.end method

.method public static zzq(Lcom/google/android/gms/internal/ads/zzeip;Lcom/google/android/gms/internal/ads/zzejm;)Lcom/google/android/gms/internal/ads/zzeem;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzekj;
        }
    .end annotation

    .line 20
    sget-object v0, Lcom/google/android/gms/internal/ads/zzeem;->zzhyj:Lcom/google/android/gms/internal/ads/zzeem;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzejz;->zza(Lcom/google/android/gms/internal/ads/zzejz;Lcom/google/android/gms/internal/ads/zzeip;Lcom/google/android/gms/internal/ads/zzejm;)Lcom/google/android/gms/internal/ads/zzejz;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzeem;

    return-object p0
.end method

.method private final zzy(Lcom/google/android/gms/internal/ads/zzeip;)V
    .registers 2

    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeem;->zzhyh:Lcom/google/android/gms/internal/ads/zzeip;

    return-void
.end method

.method private final zzz(Lcom/google/android/gms/internal/ads/zzeip;)V
    .registers 2

    .line 17
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeem;->zzhyi:Lcom/google/android/gms/internal/ads/zzeip;

    return-void
.end method


# virtual methods
.method public final getVersion()I
    .registers 2

    .line 5
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzeem;->zzhwq:I

    return v0
.end method

.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 22
    sget-object p2, Lcom/google/android/gms/internal/ads/zzeen;->zzdv:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_5e

    .line 40
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_10
    return-object p2

    .line 38
    :pswitch_11
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 29
    :pswitch_16
    sget-object p1, Lcom/google/android/gms/internal/ads/zzeem;->zzel:Lcom/google/android/gms/internal/ads/zzelw;

    if-nez p1, :cond_2f

    .line 31
    const-class p2, Lcom/google/android/gms/internal/ads/zzeem;

    monitor-enter p2

    .line 32
    :try_start_1d
    sget-object p1, Lcom/google/android/gms/internal/ads/zzeem;->zzel:Lcom/google/android/gms/internal/ads/zzelw;

    if-nez p1, :cond_2a

    .line 34
    new-instance p1, Lcom/google/android/gms/internal/ads/zzejz$zza;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzeem;->zzhyj:Lcom/google/android/gms/internal/ads/zzeem;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzejz$zza;-><init>(Lcom/google/android/gms/internal/ads/zzejz;)V

    .line 35
    sput-object p1, Lcom/google/android/gms/internal/ads/zzeem;->zzel:Lcom/google/android/gms/internal/ads/zzelw;

    .line 36
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

    .line 28
    :pswitch_30
    sget-object p1, Lcom/google/android/gms/internal/ads/zzeem;->zzhyj:Lcom/google/android/gms/internal/ads/zzeem;

    return-object p1

    :pswitch_33
    const/4 p1, 0x4

    .line 25
    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzhwq"

    aput-object v0, p1, p2

    const-string p2, "zzhxz"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzhyh"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzhyi"

    aput-object p3, p1, p2

    .line 27
    sget-object p2, Lcom/google/android/gms/internal/ads/zzeem;->zzhyj:Lcom/google/android/gms/internal/ads/zzeem;

    const-string p3, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u000b\u0002\t\u0003\n\u0004\n"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzeem;->zza(Lcom/google/android/gms/internal/ads/zzelj;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 24
    :pswitch_52
    new-instance p1, Lcom/google/android/gms/internal/ads/zzeem$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzeem$zza;-><init>(Lcom/google/android/gms/internal/ads/zzeen;)V

    return-object p1

    .line 23
    :pswitch_58
    new-instance p1, Lcom/google/android/gms/internal/ads/zzeem;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzeem;-><init>()V

    return-object p1

    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_58
        :pswitch_52
        :pswitch_33
        :pswitch_30
        :pswitch_16
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method

.method public final zzbaq()Lcom/google/android/gms/internal/ads/zzeei;
    .registers 2

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeem;->zzhxz:Lcom/google/android/gms/internal/ads/zzeei;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeei;->zzbav()Lcom/google/android/gms/internal/ads/zzeei;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public final zzbba()Lcom/google/android/gms/internal/ads/zzeip;
    .registers 2

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeem;->zzhyh:Lcom/google/android/gms/internal/ads/zzeip;

    return-object v0
.end method

.method public final zzbbb()Lcom/google/android/gms/internal/ads/zzeip;
    .registers 2

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeem;->zzhyi:Lcom/google/android/gms/internal/ads/zzeip;

    return-object v0
.end method
