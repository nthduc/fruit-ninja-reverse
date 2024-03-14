.class public final Lcom/google/android/gms/internal/ads/zzedp;
.super Lcom/google/android/gms/internal/ads/zzejz;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzell;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzedp$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzejz<",
        "Lcom/google/android/gms/internal/ads/zzedp;",
        "Lcom/google/android/gms/internal/ads/zzedp$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzell;"
    }
.end annotation


# static fields
.field private static volatile zzel:Lcom/google/android/gms/internal/ads/zzelw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzelw<",
            "Lcom/google/android/gms/internal/ads/zzedp;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzhxk:Lcom/google/android/gms/internal/ads/zzedp;


# instance fields
.field private zzhwq:I

.field private zzhwr:Lcom/google/android/gms/internal/ads/zzeip;

.field private zzhxj:Lcom/google/android/gms/internal/ads/zzedt;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 40
    new-instance v0, Lcom/google/android/gms/internal/ads/zzedp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzedp;-><init>()V

    .line 41
    sput-object v0, Lcom/google/android/gms/internal/ads/zzedp;->zzhxk:Lcom/google/android/gms/internal/ads/zzedp;

    .line 42
    const-class v1, Lcom/google/android/gms/internal/ads/zzedp;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzejz;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzejz;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzejz;-><init>()V

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzeip;->zzier:Lcom/google/android/gms/internal/ads/zzeip;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzedp;->zzhwr:Lcom/google/android/gms/internal/ads/zzeip;

    return-void
.end method

.method private final setVersion(I)V
    .registers 2

    .line 5
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzedp;->zzhwq:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzedp;I)V
    .registers 2

    .line 37
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzedp;->setVersion(I)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzedp;Lcom/google/android/gms/internal/ads/zzedt;)V
    .registers 2

    .line 38
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzedp;->zza(Lcom/google/android/gms/internal/ads/zzedt;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzedp;Lcom/google/android/gms/internal/ads/zzeip;)V
    .registers 2

    .line 39
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzedp;->zzs(Lcom/google/android/gms/internal/ads/zzeip;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzedt;)V
    .registers 2

    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzedp;->zzhxj:Lcom/google/android/gms/internal/ads/zzedt;

    return-void
.end method

.method public static zzbac()Lcom/google/android/gms/internal/ads/zzedp$zza;
    .registers 1

    .line 16
    sget-object v0, Lcom/google/android/gms/internal/ads/zzedp;->zzhxk:Lcom/google/android/gms/internal/ads/zzedp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzejz;->zzbgf()Lcom/google/android/gms/internal/ads/zzejz$zzb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzedp$zza;

    return-object v0
.end method

.method static synthetic zzbad()Lcom/google/android/gms/internal/ads/zzedp;
    .registers 1

    .line 36
    sget-object v0, Lcom/google/android/gms/internal/ads/zzedp;->zzhxk:Lcom/google/android/gms/internal/ads/zzedp;

    return-object v0
.end method

.method public static zzi(Lcom/google/android/gms/internal/ads/zzeip;Lcom/google/android/gms/internal/ads/zzejm;)Lcom/google/android/gms/internal/ads/zzedp;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzekj;
        }
    .end annotation

    .line 15
    sget-object v0, Lcom/google/android/gms/internal/ads/zzedp;->zzhxk:Lcom/google/android/gms/internal/ads/zzedp;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzejz;->zza(Lcom/google/android/gms/internal/ads/zzejz;Lcom/google/android/gms/internal/ads/zzeip;Lcom/google/android/gms/internal/ads/zzejm;)Lcom/google/android/gms/internal/ads/zzejz;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzedp;

    return-object p0
.end method

.method private final zzs(Lcom/google/android/gms/internal/ads/zzeip;)V
    .registers 2

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzedp;->zzhwr:Lcom/google/android/gms/internal/ads/zzeip;

    return-void
.end method


# virtual methods
.method public final getVersion()I
    .registers 2

    .line 4
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzedp;->zzhwq:I

    return v0
.end method

.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 17
    sget-object p2, Lcom/google/android/gms/internal/ads/zzedo;->zzdv:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_5a

    .line 35
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_10
    return-object p2

    .line 33
    :pswitch_11
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 24
    :pswitch_16
    sget-object p1, Lcom/google/android/gms/internal/ads/zzedp;->zzel:Lcom/google/android/gms/internal/ads/zzelw;

    if-nez p1, :cond_2f

    .line 26
    const-class p2, Lcom/google/android/gms/internal/ads/zzedp;

    monitor-enter p2

    .line 27
    :try_start_1d
    sget-object p1, Lcom/google/android/gms/internal/ads/zzedp;->zzel:Lcom/google/android/gms/internal/ads/zzelw;

    if-nez p1, :cond_2a

    .line 29
    new-instance p1, Lcom/google/android/gms/internal/ads/zzejz$zza;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzedp;->zzhxk:Lcom/google/android/gms/internal/ads/zzedp;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzejz$zza;-><init>(Lcom/google/android/gms/internal/ads/zzejz;)V

    .line 30
    sput-object p1, Lcom/google/android/gms/internal/ads/zzedp;->zzel:Lcom/google/android/gms/internal/ads/zzelw;

    .line 31
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

    .line 23
    :pswitch_30
    sget-object p1, Lcom/google/android/gms/internal/ads/zzedp;->zzhxk:Lcom/google/android/gms/internal/ads/zzedp;

    return-object p1

    :pswitch_33
    const/4 p1, 0x3

    .line 20
    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzhwq"

    aput-object v0, p1, p2

    const-string p2, "zzhxj"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzhwr"

    aput-object p3, p1, p2

    .line 22
    sget-object p2, Lcom/google/android/gms/internal/ads/zzedp;->zzhxk:Lcom/google/android/gms/internal/ads/zzedp;

    const-string p3, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002\t\u0003\n"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzedp;->zza(Lcom/google/android/gms/internal/ads/zzelj;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 19
    :pswitch_4d
    new-instance p1, Lcom/google/android/gms/internal/ads/zzedp$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzedp$zza;-><init>(Lcom/google/android/gms/internal/ads/zzedo;)V

    return-object p1

    .line 18
    :pswitch_53
    new-instance p1, Lcom/google/android/gms/internal/ads/zzedp;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzedp;-><init>()V

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

.method public final zzazd()Lcom/google/android/gms/internal/ads/zzeip;
    .registers 2

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzedp;->zzhwr:Lcom/google/android/gms/internal/ads/zzeip;

    return-object v0
.end method

.method public final zzbab()Lcom/google/android/gms/internal/ads/zzedt;
    .registers 2

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzedp;->zzhxj:Lcom/google/android/gms/internal/ads/zzedt;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzedt;->zzbaf()Lcom/google/android/gms/internal/ads/zzedt;

    move-result-object v0

    :cond_8
    return-object v0
.end method
