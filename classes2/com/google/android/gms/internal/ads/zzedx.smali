.class public final Lcom/google/android/gms/internal/ads/zzedx;
.super Lcom/google/android/gms/internal/ads/zzejz;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzell;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzedx$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzejz<",
        "Lcom/google/android/gms/internal/ads/zzedx;",
        "Lcom/google/android/gms/internal/ads/zzedx$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzell;"
    }
.end annotation


# static fields
.field private static volatile zzel:Lcom/google/android/gms/internal/ads/zzelw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzelw<",
            "Lcom/google/android/gms/internal/ads/zzedx;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzhxo:Lcom/google/android/gms/internal/ads/zzedx;


# instance fields
.field private zzhwq:I

.field private zzhwu:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 25
    new-instance v0, Lcom/google/android/gms/internal/ads/zzedx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzedx;-><init>()V

    .line 26
    sput-object v0, Lcom/google/android/gms/internal/ads/zzedx;->zzhxo:Lcom/google/android/gms/internal/ads/zzedx;

    .line 27
    const-class v1, Lcom/google/android/gms/internal/ads/zzedx;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzejz;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzejz;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzejz;-><init>()V

    return-void
.end method

.method static synthetic zzbaj()Lcom/google/android/gms/internal/ads/zzedx;
    .registers 1

    .line 24
    sget-object v0, Lcom/google/android/gms/internal/ads/zzedx;->zzhxo:Lcom/google/android/gms/internal/ads/zzedx;

    return-object v0
.end method

.method public static zzl(Lcom/google/android/gms/internal/ads/zzeip;Lcom/google/android/gms/internal/ads/zzejm;)Lcom/google/android/gms/internal/ads/zzedx;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzekj;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/ads/zzedx;->zzhxo:Lcom/google/android/gms/internal/ads/zzedx;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzejz;->zza(Lcom/google/android/gms/internal/ads/zzejz;Lcom/google/android/gms/internal/ads/zzeip;Lcom/google/android/gms/internal/ads/zzejm;)Lcom/google/android/gms/internal/ads/zzejz;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzedx;

    return-object p0
.end method


# virtual methods
.method public final getKeySize()I
    .registers 2

    .line 3
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzedx;->zzhwu:I

    return v0
.end method

.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 5
    sget-object p2, Lcom/google/android/gms/internal/ads/zzedw;->zzdv:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_54

    .line 23
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_10
    return-object p2

    .line 21
    :pswitch_11
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 12
    :pswitch_16
    sget-object p1, Lcom/google/android/gms/internal/ads/zzedx;->zzel:Lcom/google/android/gms/internal/ads/zzelw;

    if-nez p1, :cond_2f

    .line 14
    const-class p2, Lcom/google/android/gms/internal/ads/zzedx;

    monitor-enter p2

    .line 15
    :try_start_1d
    sget-object p1, Lcom/google/android/gms/internal/ads/zzedx;->zzel:Lcom/google/android/gms/internal/ads/zzelw;

    if-nez p1, :cond_2a

    .line 17
    new-instance p1, Lcom/google/android/gms/internal/ads/zzejz$zza;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzedx;->zzhxo:Lcom/google/android/gms/internal/ads/zzedx;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzejz$zza;-><init>(Lcom/google/android/gms/internal/ads/zzejz;)V

    .line 18
    sput-object p1, Lcom/google/android/gms/internal/ads/zzedx;->zzel:Lcom/google/android/gms/internal/ads/zzelw;

    .line 19
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

    .line 11
    :pswitch_30
    sget-object p1, Lcom/google/android/gms/internal/ads/zzedx;->zzhxo:Lcom/google/android/gms/internal/ads/zzedx;

    return-object p1

    :pswitch_33
    const/4 p1, 0x2

    .line 8
    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzhwu"

    aput-object v0, p1, p2

    const-string p2, "zzhwq"

    aput-object p2, p1, p3

    .line 10
    sget-object p2, Lcom/google/android/gms/internal/ads/zzedx;->zzhxo:Lcom/google/android/gms/internal/ads/zzedx;

    const-string p3, "\u0000\u0002\u0000\u0000\u0002\u0003\u0002\u0000\u0000\u0000\u0002\u000b\u0003\u000b"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzedx;->zza(Lcom/google/android/gms/internal/ads/zzelj;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 7
    :pswitch_48
    new-instance p1, Lcom/google/android/gms/internal/ads/zzedx$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzedx$zza;-><init>(Lcom/google/android/gms/internal/ads/zzedw;)V

    return-object p1

    .line 6
    :pswitch_4e
    new-instance p1, Lcom/google/android/gms/internal/ads/zzedx;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzedx;-><init>()V

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
