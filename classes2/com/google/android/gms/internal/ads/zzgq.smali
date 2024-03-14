.class public final Lcom/google/android/gms/internal/ads/zzgq;
.super Lcom/google/android/gms/internal/ads/zzejz;
.source "com.google.android.gms:play-services-gass@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzell;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzgq$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzejz<",
        "Lcom/google/android/gms/internal/ads/zzgq;",
        "Lcom/google/android/gms/internal/ads/zzgq$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzell;"
    }
.end annotation


# static fields
.field private static final zzacb:Lcom/google/android/gms/internal/ads/zzgq;

.field private static volatile zzel:Lcom/google/android/gms/internal/ads/zzelw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzelw<",
            "Lcom/google/android/gms/internal/ads/zzgq;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzaby:Lcom/google/android/gms/internal/ads/zzgr;

.field private zzabz:Lcom/google/android/gms/internal/ads/zzeip;

.field private zzaca:Lcom/google/android/gms/internal/ads/zzeip;

.field private zzdw:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 29
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgq;-><init>()V

    .line 30
    sput-object v0, Lcom/google/android/gms/internal/ads/zzgq;->zzacb:Lcom/google/android/gms/internal/ads/zzgq;

    .line 31
    const-class v1, Lcom/google/android/gms/internal/ads/zzgq;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzejz;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzejz;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzejz;-><init>()V

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzeip;->zzier:Lcom/google/android/gms/internal/ads/zzeip;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgq;->zzabz:Lcom/google/android/gms/internal/ads/zzeip;

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/ads/zzeip;->zzier:Lcom/google/android/gms/internal/ads/zzeip;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgq;->zzaca:Lcom/google/android/gms/internal/ads/zzeip;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzeip;Lcom/google/android/gms/internal/ads/zzejm;)Lcom/google/android/gms/internal/ads/zzgq;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzekj;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgq;->zzacb:Lcom/google/android/gms/internal/ads/zzgq;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzejz;->zza(Lcom/google/android/gms/internal/ads/zzejz;Lcom/google/android/gms/internal/ads/zzeip;Lcom/google/android/gms/internal/ads/zzejm;)Lcom/google/android/gms/internal/ads/zzejz;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzgq;

    return-object p0
.end method

.method static synthetic zzdf()Lcom/google/android/gms/internal/ads/zzgq;
    .registers 1

    .line 28
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgq;->zzacb:Lcom/google/android/gms/internal/ads/zzgq;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 9
    sget-object p2, Lcom/google/android/gms/internal/ads/zzgp;->zzdv:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_5e

    .line 27
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_10
    return-object p2

    .line 25
    :pswitch_11
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 16
    :pswitch_16
    sget-object p1, Lcom/google/android/gms/internal/ads/zzgq;->zzel:Lcom/google/android/gms/internal/ads/zzelw;

    if-nez p1, :cond_2f

    .line 18
    const-class p2, Lcom/google/android/gms/internal/ads/zzgq;

    monitor-enter p2

    .line 19
    :try_start_1d
    sget-object p1, Lcom/google/android/gms/internal/ads/zzgq;->zzel:Lcom/google/android/gms/internal/ads/zzelw;

    if-nez p1, :cond_2a

    .line 21
    new-instance p1, Lcom/google/android/gms/internal/ads/zzejz$zza;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzgq;->zzacb:Lcom/google/android/gms/internal/ads/zzgq;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzejz$zza;-><init>(Lcom/google/android/gms/internal/ads/zzejz;)V

    .line 22
    sput-object p1, Lcom/google/android/gms/internal/ads/zzgq;->zzel:Lcom/google/android/gms/internal/ads/zzelw;

    .line 23
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

    .line 15
    :pswitch_30
    sget-object p1, Lcom/google/android/gms/internal/ads/zzgq;->zzacb:Lcom/google/android/gms/internal/ads/zzgq;

    return-object p1

    :pswitch_33
    const/4 p1, 0x4

    .line 12
    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzdw"

    aput-object v0, p1, p2

    const-string p2, "zzaby"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzabz"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzaca"

    aput-object p3, p1, p2

    .line 14
    sget-object p2, Lcom/google/android/gms/internal/ads/zzgq;->zzacb:Lcom/google/android/gms/internal/ads/zzgq;

    const-string p3, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u1009\u0000\u0002\u100a\u0001\u0003\u100a\u0002"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzgq;->zza(Lcom/google/android/gms/internal/ads/zzelj;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 11
    :pswitch_52
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgq$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzgq$zza;-><init>(Lcom/google/android/gms/internal/ads/zzgp;)V

    return-object p1

    .line 10
    :pswitch_58
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgq;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzgq;-><init>()V

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

.method public final zzdc()Lcom/google/android/gms/internal/ads/zzgr;
    .registers 2

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgq;->zzaby:Lcom/google/android/gms/internal/ads/zzgr;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgr;->zzdm()Lcom/google/android/gms/internal/ads/zzgr;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public final zzdd()Lcom/google/android/gms/internal/ads/zzeip;
    .registers 2

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgq;->zzabz:Lcom/google/android/gms/internal/ads/zzeip;

    return-object v0
.end method

.method public final zzde()Lcom/google/android/gms/internal/ads/zzeip;
    .registers 2

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgq;->zzaca:Lcom/google/android/gms/internal/ads/zzeip;

    return-object v0
.end method
