.class public final Lcom/google/android/gms/internal/ads/zzefu;
.super Lcom/google/android/gms/internal/ads/zzejz;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzell;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzefu$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzejz<",
        "Lcom/google/android/gms/internal/ads/zzefu;",
        "Lcom/google/android/gms/internal/ads/zzefu$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzell;"
    }
.end annotation


# static fields
.field private static volatile zzel:Lcom/google/android/gms/internal/ads/zzelw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzelw<",
            "Lcom/google/android/gms/internal/ads/zzefu;",
            ">;"
        }
    .end annotation
.end field

.field private static final zziax:Lcom/google/android/gms/internal/ads/zzefu;


# instance fields
.field private zziav:Ljava/lang/String;

.field private zziaw:Lcom/google/android/gms/internal/ads/zzefe;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 28
    new-instance v0, Lcom/google/android/gms/internal/ads/zzefu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzefu;-><init>()V

    .line 29
    sput-object v0, Lcom/google/android/gms/internal/ads/zzefu;->zziax:Lcom/google/android/gms/internal/ads/zzefu;

    .line 30
    const-class v1, Lcom/google/android/gms/internal/ads/zzefu;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzejz;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzejz;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzejz;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzefu;->zziav:Ljava/lang/String;

    return-void
.end method

.method public static zzbdd()Lcom/google/android/gms/internal/ads/zzefu;
    .registers 1

    .line 26
    sget-object v0, Lcom/google/android/gms/internal/ads/zzefu;->zziax:Lcom/google/android/gms/internal/ads/zzefu;

    return-object v0
.end method

.method static synthetic zzbde()Lcom/google/android/gms/internal/ads/zzefu;
    .registers 1

    .line 27
    sget-object v0, Lcom/google/android/gms/internal/ads/zzefu;->zziax:Lcom/google/android/gms/internal/ads/zzefu;

    return-object v0
.end method

.method public static zzw(Lcom/google/android/gms/internal/ads/zzeip;Lcom/google/android/gms/internal/ads/zzejm;)Lcom/google/android/gms/internal/ads/zzefu;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzekj;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/google/android/gms/internal/ads/zzefu;->zziax:Lcom/google/android/gms/internal/ads/zzefu;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzejz;->zza(Lcom/google/android/gms/internal/ads/zzejz;Lcom/google/android/gms/internal/ads/zzeip;Lcom/google/android/gms/internal/ads/zzejm;)Lcom/google/android/gms/internal/ads/zzejz;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzefu;

    return-object p0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 7
    sget-object p2, Lcom/google/android/gms/internal/ads/zzeft;->zzdv:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_54

    .line 25
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_10
    return-object p2

    .line 23
    :pswitch_11
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 14
    :pswitch_16
    sget-object p1, Lcom/google/android/gms/internal/ads/zzefu;->zzel:Lcom/google/android/gms/internal/ads/zzelw;

    if-nez p1, :cond_2f

    .line 16
    const-class p2, Lcom/google/android/gms/internal/ads/zzefu;

    monitor-enter p2

    .line 17
    :try_start_1d
    sget-object p1, Lcom/google/android/gms/internal/ads/zzefu;->zzel:Lcom/google/android/gms/internal/ads/zzelw;

    if-nez p1, :cond_2a

    .line 19
    new-instance p1, Lcom/google/android/gms/internal/ads/zzejz$zza;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzefu;->zziax:Lcom/google/android/gms/internal/ads/zzefu;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzejz$zza;-><init>(Lcom/google/android/gms/internal/ads/zzejz;)V

    .line 20
    sput-object p1, Lcom/google/android/gms/internal/ads/zzefu;->zzel:Lcom/google/android/gms/internal/ads/zzelw;

    .line 21
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

    .line 13
    :pswitch_30
    sget-object p1, Lcom/google/android/gms/internal/ads/zzefu;->zziax:Lcom/google/android/gms/internal/ads/zzefu;

    return-object p1

    :pswitch_33
    const/4 p1, 0x2

    .line 10
    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zziav"

    aput-object v0, p1, p2

    const-string p2, "zziaw"

    aput-object p2, p1, p3

    .line 12
    sget-object p2, Lcom/google/android/gms/internal/ads/zzefu;->zziax:Lcom/google/android/gms/internal/ads/zzefu;

    const-string p3, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0208\u0002\t"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzefu;->zza(Lcom/google/android/gms/internal/ads/zzelj;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 9
    :pswitch_48
    new-instance p1, Lcom/google/android/gms/internal/ads/zzefu$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzefu$zza;-><init>(Lcom/google/android/gms/internal/ads/zzeft;)V

    return-object p1

    .line 8
    :pswitch_4e
    new-instance p1, Lcom/google/android/gms/internal/ads/zzefu;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzefu;-><init>()V

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

.method public final zzbdb()Ljava/lang/String;
    .registers 2

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzefu;->zziav:Ljava/lang/String;

    return-object v0
.end method

.method public final zzbdc()Lcom/google/android/gms/internal/ads/zzefe;
    .registers 2

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzefu;->zziaw:Lcom/google/android/gms/internal/ads/zzefe;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzefe;->zzbbz()Lcom/google/android/gms/internal/ads/zzefe;

    move-result-object v0

    :cond_8
    return-object v0
.end method
