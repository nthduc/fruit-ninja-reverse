.class public final Lcom/google/android/gms/internal/ads/zzeed;
.super Lcom/google/android/gms/internal/ads/zzejz;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzell;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzeed$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzejz<",
        "Lcom/google/android/gms/internal/ads/zzeed;",
        "Lcom/google/android/gms/internal/ads/zzeed$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzell;"
    }
.end annotation


# static fields
.field private static volatile zzel:Lcom/google/android/gms/internal/ads/zzelw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzelw<",
            "Lcom/google/android/gms/internal/ads/zzeed;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzhxy:Lcom/google/android/gms/internal/ads/zzeed;


# instance fields
.field private zzhxx:Lcom/google/android/gms/internal/ads/zzefe;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 25
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeed;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzeed;-><init>()V

    .line 26
    sput-object v0, Lcom/google/android/gms/internal/ads/zzeed;->zzhxy:Lcom/google/android/gms/internal/ads/zzeed;

    .line 27
    const-class v1, Lcom/google/android/gms/internal/ads/zzeed;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzejz;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzejz;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzejz;-><init>()V

    return-void
.end method

.method public static zzbao()Lcom/google/android/gms/internal/ads/zzeed;
    .registers 1

    .line 23
    sget-object v0, Lcom/google/android/gms/internal/ads/zzeed;->zzhxy:Lcom/google/android/gms/internal/ads/zzeed;

    return-object v0
.end method

.method static synthetic zzbap()Lcom/google/android/gms/internal/ads/zzeed;
    .registers 1

    .line 24
    sget-object v0, Lcom/google/android/gms/internal/ads/zzeed;->zzhxy:Lcom/google/android/gms/internal/ads/zzeed;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 4
    sget-object p2, Lcom/google/android/gms/internal/ads/zzeef;->zzdv:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_50

    .line 22
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_10
    return-object p2

    .line 20
    :pswitch_11
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 11
    :pswitch_16
    sget-object p1, Lcom/google/android/gms/internal/ads/zzeed;->zzel:Lcom/google/android/gms/internal/ads/zzelw;

    if-nez p1, :cond_2f

    .line 13
    const-class p2, Lcom/google/android/gms/internal/ads/zzeed;

    monitor-enter p2

    .line 14
    :try_start_1d
    sget-object p1, Lcom/google/android/gms/internal/ads/zzeed;->zzel:Lcom/google/android/gms/internal/ads/zzelw;

    if-nez p1, :cond_2a

    .line 16
    new-instance p1, Lcom/google/android/gms/internal/ads/zzejz$zza;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzeed;->zzhxy:Lcom/google/android/gms/internal/ads/zzeed;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzejz$zza;-><init>(Lcom/google/android/gms/internal/ads/zzejz;)V

    .line 17
    sput-object p1, Lcom/google/android/gms/internal/ads/zzeed;->zzel:Lcom/google/android/gms/internal/ads/zzelw;

    .line 18
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

    .line 10
    :pswitch_30
    sget-object p1, Lcom/google/android/gms/internal/ads/zzeed;->zzhxy:Lcom/google/android/gms/internal/ads/zzeed;

    return-object p1

    .line 7
    :pswitch_33
    new-array p1, p3, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "zzhxx"

    aput-object p3, p1, p2

    .line 9
    sget-object p2, Lcom/google/android/gms/internal/ads/zzeed;->zzhxy:Lcom/google/android/gms/internal/ads/zzeed;

    const-string p3, "\u0000\u0001\u0000\u0000\u0002\u0002\u0001\u0000\u0000\u0000\u0002\t"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzeed;->zza(Lcom/google/android/gms/internal/ads/zzelj;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 6
    :pswitch_43
    new-instance p1, Lcom/google/android/gms/internal/ads/zzeed$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzeed$zza;-><init>(Lcom/google/android/gms/internal/ads/zzeef;)V

    return-object p1

    .line 5
    :pswitch_49
    new-instance p1, Lcom/google/android/gms/internal/ads/zzeed;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzeed;-><init>()V

    return-object p1

    nop

    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_49
        :pswitch_43
        :pswitch_33
        :pswitch_30
        :pswitch_16
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method

.method public final zzban()Lcom/google/android/gms/internal/ads/zzefe;
    .registers 2

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeed;->zzhxx:Lcom/google/android/gms/internal/ads/zzefe;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzefe;->zzbbz()Lcom/google/android/gms/internal/ads/zzefe;

    move-result-object v0

    :cond_8
    return-object v0
.end method
