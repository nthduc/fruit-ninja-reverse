.class public final Lcom/google/android/gms/internal/ads/zzua$zzh;
.super Lcom/google/android/gms/internal/ads/zzejz;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzell;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzua;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzh"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzua$zzh$zza;,
        Lcom/google/android/gms/internal/ads/zzua$zzh$zzb;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzejz<",
        "Lcom/google/android/gms/internal/ads/zzua$zzh;",
        "Lcom/google/android/gms/internal/ads/zzua$zzh$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzell;"
    }
.end annotation


# static fields
.field private static final zzcbk:Lcom/google/android/gms/internal/ads/zzua$zzh;

.field private static volatile zzel:Lcom/google/android/gms/internal/ads/zzelw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzelw<",
            "Lcom/google/android/gms/internal/ads/zzua$zzh;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzcbg:I

.field private zzcbh:Lcom/google/android/gms/internal/ads/zzua$zzu;

.field private zzcbi:Ljava/lang/String;

.field private zzcbj:Ljava/lang/String;

.field private zzdw:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 26
    new-instance v0, Lcom/google/android/gms/internal/ads/zzua$zzh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzua$zzh;-><init>()V

    .line 27
    sput-object v0, Lcom/google/android/gms/internal/ads/zzua$zzh;->zzcbk:Lcom/google/android/gms/internal/ads/zzua$zzh;

    .line 28
    const-class v1, Lcom/google/android/gms/internal/ads/zzua$zzh;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzejz;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzejz;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzejz;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzua$zzh;->zzcbi:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzua$zzh;->zzcbj:Ljava/lang/String;

    return-void
.end method

.method static synthetic zznv()Lcom/google/android/gms/internal/ads/zzua$zzh;
    .registers 1

    .line 25
    sget-object v0, Lcom/google/android/gms/internal/ads/zzua$zzh;->zzcbk:Lcom/google/android/gms/internal/ads/zzua$zzh;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 5
    sget-object p2, Lcom/google/android/gms/internal/ads/zzuc;->zzdv:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_6a

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzua$zzh;->zzel:Lcom/google/android/gms/internal/ads/zzelw;

    if-nez p1, :cond_2f

    .line 15
    const-class p2, Lcom/google/android/gms/internal/ads/zzua$zzh;

    monitor-enter p2

    .line 16
    :try_start_1d
    sget-object p1, Lcom/google/android/gms/internal/ads/zzua$zzh;->zzel:Lcom/google/android/gms/internal/ads/zzelw;

    if-nez p1, :cond_2a

    .line 18
    new-instance p1, Lcom/google/android/gms/internal/ads/zzejz$zza;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzua$zzh;->zzcbk:Lcom/google/android/gms/internal/ads/zzua$zzh;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzejz$zza;-><init>(Lcom/google/android/gms/internal/ads/zzejz;)V

    .line 19
    sput-object p1, Lcom/google/android/gms/internal/ads/zzua$zzh;->zzel:Lcom/google/android/gms/internal/ads/zzelw;

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzua$zzh;->zzcbk:Lcom/google/android/gms/internal/ads/zzua$zzh;

    return-object p1

    :pswitch_33
    const/4 p1, 0x6

    .line 8
    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzdw"

    aput-object v0, p1, p2

    const-string p2, "zzcbg"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzua$zzh$zzb;->zzw()Lcom/google/android/gms/internal/ads/zzekg;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzcbh"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzcbi"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzcbj"

    aput-object p3, p1, p2

    .line 11
    sget-object p2, Lcom/google/android/gms/internal/ads/zzua$zzh;->zzcbk:Lcom/google/android/gms/internal/ads/zzua$zzh;

    const-string p3, "\u0001\u0004\u0000\u0001\u0005\u0008\u0004\u0000\u0000\u0000\u0005\u100c\u0000\u0006\u1009\u0001\u0007\u1008\u0002\u0008\u1008\u0003"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzua$zzh;->zza(Lcom/google/android/gms/internal/ads/zzelj;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 7
    :pswitch_5e
    new-instance p1, Lcom/google/android/gms/internal/ads/zzua$zzh$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzua$zzh$zza;-><init>(Lcom/google/android/gms/internal/ads/zzuc;)V

    return-object p1

    .line 6
    :pswitch_64
    new-instance p1, Lcom/google/android/gms/internal/ads/zzua$zzh;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzua$zzh;-><init>()V

    return-object p1

    :pswitch_data_6a
    .packed-switch 0x1
        :pswitch_64
        :pswitch_5e
        :pswitch_33
        :pswitch_30
        :pswitch_16
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method
