.class public final Lcom/google/android/gms/internal/ads/zzegb;
.super Lcom/google/android/gms/internal/ads/zzejz;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzell;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzegb$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzejz<",
        "Lcom/google/android/gms/internal/ads/zzegb;",
        "Lcom/google/android/gms/internal/ads/zzegb$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzell;"
    }
.end annotation


# static fields
.field private static volatile zzel:Lcom/google/android/gms/internal/ads/zzelw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzelw<",
            "Lcom/google/android/gms/internal/ads/zzegb;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzibj:Lcom/google/android/gms/internal/ads/zzegb;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 23
    new-instance v0, Lcom/google/android/gms/internal/ads/zzegb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzegb;-><init>()V

    .line 24
    sput-object v0, Lcom/google/android/gms/internal/ads/zzegb;->zzibj:Lcom/google/android/gms/internal/ads/zzegb;

    .line 25
    const-class v1, Lcom/google/android/gms/internal/ads/zzegb;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzejz;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzejz;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzejz;-><init>()V

    return-void
.end method

.method static synthetic zzbdk()Lcom/google/android/gms/internal/ads/zzegb;
    .registers 1

    .line 22
    sget-object v0, Lcom/google/android/gms/internal/ads/zzegb;->zzibj:Lcom/google/android/gms/internal/ads/zzegb;

    return-object v0
.end method

.method public static zzy(Lcom/google/android/gms/internal/ads/zzeip;Lcom/google/android/gms/internal/ads/zzejm;)Lcom/google/android/gms/internal/ads/zzegb;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzekj;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/ads/zzegb;->zzibj:Lcom/google/android/gms/internal/ads/zzegb;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzejz;->zza(Lcom/google/android/gms/internal/ads/zzejz;Lcom/google/android/gms/internal/ads/zzeip;Lcom/google/android/gms/internal/ads/zzejm;)Lcom/google/android/gms/internal/ads/zzejz;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzegb;

    return-object p0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 4
    sget-object p2, Lcom/google/android/gms/internal/ads/zzegc;->zzdv:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_48

    .line 21
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_10
    return-object p2

    .line 19
    :pswitch_11
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 10
    :pswitch_16
    sget-object p1, Lcom/google/android/gms/internal/ads/zzegb;->zzel:Lcom/google/android/gms/internal/ads/zzelw;

    if-nez p1, :cond_2f

    .line 12
    const-class p2, Lcom/google/android/gms/internal/ads/zzegb;

    monitor-enter p2

    .line 13
    :try_start_1d
    sget-object p1, Lcom/google/android/gms/internal/ads/zzegb;->zzel:Lcom/google/android/gms/internal/ads/zzelw;

    if-nez p1, :cond_2a

    .line 15
    new-instance p1, Lcom/google/android/gms/internal/ads/zzejz$zza;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzegb;->zzibj:Lcom/google/android/gms/internal/ads/zzegb;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzejz$zza;-><init>(Lcom/google/android/gms/internal/ads/zzejz;)V

    .line 16
    sput-object p1, Lcom/google/android/gms/internal/ads/zzegb;->zzel:Lcom/google/android/gms/internal/ads/zzelw;

    .line 17
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

    .line 9
    :pswitch_30
    sget-object p1, Lcom/google/android/gms/internal/ads/zzegb;->zzibj:Lcom/google/android/gms/internal/ads/zzegb;

    return-object p1

    .line 8
    :pswitch_33
    sget-object p1, Lcom/google/android/gms/internal/ads/zzegb;->zzibj:Lcom/google/android/gms/internal/ads/zzegb;

    const-string p3, "\u0000\u0000"

    invoke-static {p1, p3, p2}, Lcom/google/android/gms/internal/ads/zzegb;->zza(Lcom/google/android/gms/internal/ads/zzelj;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 6
    :pswitch_3c
    new-instance p1, Lcom/google/android/gms/internal/ads/zzegb$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzegb$zza;-><init>(Lcom/google/android/gms/internal/ads/zzegc;)V

    return-object p1

    .line 5
    :pswitch_42
    new-instance p1, Lcom/google/android/gms/internal/ads/zzegb;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzegb;-><init>()V

    return-object p1

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_42
        :pswitch_3c
        :pswitch_33
        :pswitch_30
        :pswitch_16
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method
