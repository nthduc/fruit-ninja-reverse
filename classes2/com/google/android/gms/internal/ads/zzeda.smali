.class public final Lcom/google/android/gms/internal/ads/zzeda;
.super Lcom/google/android/gms/internal/ads/zzejz;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzell;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzeda$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzejz<",
        "Lcom/google/android/gms/internal/ads/zzeda;",
        "Lcom/google/android/gms/internal/ads/zzeda$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzell;"
    }
.end annotation


# static fields
.field private static volatile zzel:Lcom/google/android/gms/internal/ads/zzelw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzelw<",
            "Lcom/google/android/gms/internal/ads/zzeda;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzhwv:Lcom/google/android/gms/internal/ads/zzeda;


# instance fields
.field private zzhws:Lcom/google/android/gms/internal/ads/zzedd;

.field private zzhwu:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 26
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeda;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzeda;-><init>()V

    .line 27
    sput-object v0, Lcom/google/android/gms/internal/ads/zzeda;->zzhwv:Lcom/google/android/gms/internal/ads/zzeda;

    .line 28
    const-class v1, Lcom/google/android/gms/internal/ads/zzeda;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzejz;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzejz;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzejz;-><init>()V

    return-void
.end method

.method static synthetic zzazh()Lcom/google/android/gms/internal/ads/zzeda;
    .registers 1

    .line 25
    sget-object v0, Lcom/google/android/gms/internal/ads/zzeda;->zzhwv:Lcom/google/android/gms/internal/ads/zzeda;

    return-object v0
.end method

.method public static zzd(Lcom/google/android/gms/internal/ads/zzeip;Lcom/google/android/gms/internal/ads/zzejm;)Lcom/google/android/gms/internal/ads/zzeda;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzekj;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/google/android/gms/internal/ads/zzeda;->zzhwv:Lcom/google/android/gms/internal/ads/zzeda;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzejz;->zza(Lcom/google/android/gms/internal/ads/zzejz;Lcom/google/android/gms/internal/ads/zzeip;Lcom/google/android/gms/internal/ads/zzejm;)Lcom/google/android/gms/internal/ads/zzejz;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzeda;

    return-object p0
.end method


# virtual methods
.method public final getKeySize()I
    .registers 2

    .line 3
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzeda;->zzhwu:I

    return v0
.end method

.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 6
    sget-object p2, Lcom/google/android/gms/internal/ads/zzedb;->zzdv:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_54

    .line 24
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_10
    return-object p2

    .line 22
    :pswitch_11
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 13
    :pswitch_16
    sget-object p1, Lcom/google/android/gms/internal/ads/zzeda;->zzel:Lcom/google/android/gms/internal/ads/zzelw;

    if-nez p1, :cond_2f

    .line 15
    const-class p2, Lcom/google/android/gms/internal/ads/zzeda;

    monitor-enter p2

    .line 16
    :try_start_1d
    sget-object p1, Lcom/google/android/gms/internal/ads/zzeda;->zzel:Lcom/google/android/gms/internal/ads/zzelw;

    if-nez p1, :cond_2a

    .line 18
    new-instance p1, Lcom/google/android/gms/internal/ads/zzejz$zza;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzeda;->zzhwv:Lcom/google/android/gms/internal/ads/zzeda;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzejz$zza;-><init>(Lcom/google/android/gms/internal/ads/zzejz;)V

    .line 19
    sput-object p1, Lcom/google/android/gms/internal/ads/zzeda;->zzel:Lcom/google/android/gms/internal/ads/zzelw;

    .line 20
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

    .line 12
    :pswitch_30
    sget-object p1, Lcom/google/android/gms/internal/ads/zzeda;->zzhwv:Lcom/google/android/gms/internal/ads/zzeda;

    return-object p1

    :pswitch_33
    const/4 p1, 0x2

    .line 9
    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzhwu"

    aput-object v0, p1, p2

    const-string p2, "zzhws"

    aput-object p2, p1, p3

    .line 11
    sget-object p2, Lcom/google/android/gms/internal/ads/zzeda;->zzhwv:Lcom/google/android/gms/internal/ads/zzeda;

    const-string p3, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000b\u0002\t"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzeda;->zza(Lcom/google/android/gms/internal/ads/zzelj;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 8
    :pswitch_48
    new-instance p1, Lcom/google/android/gms/internal/ads/zzeda$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzeda$zza;-><init>(Lcom/google/android/gms/internal/ads/zzedb;)V

    return-object p1

    .line 7
    :pswitch_4e
    new-instance p1, Lcom/google/android/gms/internal/ads/zzeda;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzeda;-><init>()V

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

.method public final zzaze()Lcom/google/android/gms/internal/ads/zzedd;
    .registers 2

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeda;->zzhws:Lcom/google/android/gms/internal/ads/zzedd;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzedd;->zzazj()Lcom/google/android/gms/internal/ads/zzedd;

    move-result-object v0

    :cond_8
    return-object v0
.end method
