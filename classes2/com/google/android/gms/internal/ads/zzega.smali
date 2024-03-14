.class public final Lcom/google/android/gms/internal/ads/zzega;
.super Lcom/google/android/gms/internal/ads/zzejz;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzell;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzega$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzejz<",
        "Lcom/google/android/gms/internal/ads/zzega;",
        "Lcom/google/android/gms/internal/ads/zzega$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzell;"
    }
.end annotation


# static fields
.field private static volatile zzel:Lcom/google/android/gms/internal/ads/zzelw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzelw<",
            "Lcom/google/android/gms/internal/ads/zzega;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzibi:Lcom/google/android/gms/internal/ads/zzega;


# instance fields
.field private zzhwq:I

.field private zzhwr:Lcom/google/android/gms/internal/ads/zzeip;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 35
    new-instance v0, Lcom/google/android/gms/internal/ads/zzega;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzega;-><init>()V

    .line 36
    sput-object v0, Lcom/google/android/gms/internal/ads/zzega;->zzibi:Lcom/google/android/gms/internal/ads/zzega;

    .line 37
    const-class v1, Lcom/google/android/gms/internal/ads/zzega;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzejz;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzejz;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzejz;-><init>()V

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzeip;->zzier:Lcom/google/android/gms/internal/ads/zzeip;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzega;->zzhwr:Lcom/google/android/gms/internal/ads/zzeip;

    return-void
.end method

.method private final setVersion(I)V
    .registers 2

    .line 5
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzega;->zzhwq:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzega;I)V
    .registers 2

    .line 33
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzega;->setVersion(I)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzega;Lcom/google/android/gms/internal/ads/zzeip;)V
    .registers 2

    .line 34
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzega;->zzs(Lcom/google/android/gms/internal/ads/zzeip;)V

    return-void
.end method

.method public static zzbdi()Lcom/google/android/gms/internal/ads/zzega$zza;
    .registers 1

    .line 12
    sget-object v0, Lcom/google/android/gms/internal/ads/zzega;->zzibi:Lcom/google/android/gms/internal/ads/zzega;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzejz;->zzbgf()Lcom/google/android/gms/internal/ads/zzejz$zzb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzega$zza;

    return-object v0
.end method

.method static synthetic zzbdj()Lcom/google/android/gms/internal/ads/zzega;
    .registers 1

    .line 32
    sget-object v0, Lcom/google/android/gms/internal/ads/zzega;->zzibi:Lcom/google/android/gms/internal/ads/zzega;

    return-object v0
.end method

.method private final zzs(Lcom/google/android/gms/internal/ads/zzeip;)V
    .registers 2

    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzega;->zzhwr:Lcom/google/android/gms/internal/ads/zzeip;

    return-void
.end method

.method public static zzx(Lcom/google/android/gms/internal/ads/zzeip;Lcom/google/android/gms/internal/ads/zzejm;)Lcom/google/android/gms/internal/ads/zzega;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzekj;
        }
    .end annotation

    .line 11
    sget-object v0, Lcom/google/android/gms/internal/ads/zzega;->zzibi:Lcom/google/android/gms/internal/ads/zzega;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzejz;->zza(Lcom/google/android/gms/internal/ads/zzejz;Lcom/google/android/gms/internal/ads/zzeip;Lcom/google/android/gms/internal/ads/zzejm;)Lcom/google/android/gms/internal/ads/zzejz;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzega;

    return-object p0
.end method


# virtual methods
.method public final getVersion()I
    .registers 2

    .line 4
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzega;->zzhwq:I

    return v0
.end method

.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 13
    sget-object p2, Lcom/google/android/gms/internal/ads/zzefz;->zzdv:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_54

    .line 31
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_10
    return-object p2

    .line 29
    :pswitch_11
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 20
    :pswitch_16
    sget-object p1, Lcom/google/android/gms/internal/ads/zzega;->zzel:Lcom/google/android/gms/internal/ads/zzelw;

    if-nez p1, :cond_2f

    .line 22
    const-class p2, Lcom/google/android/gms/internal/ads/zzega;

    monitor-enter p2

    .line 23
    :try_start_1d
    sget-object p1, Lcom/google/android/gms/internal/ads/zzega;->zzel:Lcom/google/android/gms/internal/ads/zzelw;

    if-nez p1, :cond_2a

    .line 25
    new-instance p1, Lcom/google/android/gms/internal/ads/zzejz$zza;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzega;->zzibi:Lcom/google/android/gms/internal/ads/zzega;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzejz$zza;-><init>(Lcom/google/android/gms/internal/ads/zzejz;)V

    .line 26
    sput-object p1, Lcom/google/android/gms/internal/ads/zzega;->zzel:Lcom/google/android/gms/internal/ads/zzelw;

    .line 27
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

    .line 19
    :pswitch_30
    sget-object p1, Lcom/google/android/gms/internal/ads/zzega;->zzibi:Lcom/google/android/gms/internal/ads/zzega;

    return-object p1

    :pswitch_33
    const/4 p1, 0x2

    .line 16
    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzhwq"

    aput-object v0, p1, p2

    const-string p2, "zzhwr"

    aput-object p2, p1, p3

    .line 18
    sget-object p2, Lcom/google/android/gms/internal/ads/zzega;->zzibi:Lcom/google/android/gms/internal/ads/zzega;

    const-string p3, "\u0000\u0002\u0000\u0000\u0001\u0003\u0002\u0000\u0000\u0000\u0001\u000b\u0003\n"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzega;->zza(Lcom/google/android/gms/internal/ads/zzelj;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 15
    :pswitch_48
    new-instance p1, Lcom/google/android/gms/internal/ads/zzega$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzega$zza;-><init>(Lcom/google/android/gms/internal/ads/zzefz;)V

    return-object p1

    .line 14
    :pswitch_4e
    new-instance p1, Lcom/google/android/gms/internal/ads/zzega;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzega;-><init>()V

    return-object p1

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_4e
        :pswitch_48
        :pswitch_33
        :pswitch_30
        :pswitch_16
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method

.method public final zzazd()Lcom/google/android/gms/internal/ads/zzeip;
    .registers 2

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzega;->zzhwr:Lcom/google/android/gms/internal/ads/zzeip;

    return-object v0
.end method
