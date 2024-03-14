.class public final Lcom/google/android/gms/internal/ads/zzua$zzs;
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
    name = "zzs"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzua$zzs$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzejz<",
        "Lcom/google/android/gms/internal/ads/zzua$zzs;",
        "Lcom/google/android/gms/internal/ads/zzua$zzs$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzell;"
    }
.end annotation


# static fields
.field private static final zzcey:Lcom/google/android/gms/internal/ads/zzua$zzs;

.field private static volatile zzel:Lcom/google/android/gms/internal/ads/zzelw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzelw<",
            "Lcom/google/android/gms/internal/ads/zzua$zzs;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzcch:Ljava/lang/String;

.field private zzcci:I

.field private zzcck:Lcom/google/android/gms/internal/ads/zzua$zzt;

.field private zzdw:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 25
    new-instance v0, Lcom/google/android/gms/internal/ads/zzua$zzs;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzua$zzs;-><init>()V

    .line 26
    sput-object v0, Lcom/google/android/gms/internal/ads/zzua$zzs;->zzcey:Lcom/google/android/gms/internal/ads/zzua$zzs;

    .line 27
    const-class v1, Lcom/google/android/gms/internal/ads/zzua$zzs;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzejz;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzejz;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzejz;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzua$zzs;->zzcch:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzor()Lcom/google/android/gms/internal/ads/zzua$zzs;
    .registers 1

    .line 24
    sget-object v0, Lcom/google/android/gms/internal/ads/zzua$zzs;->zzcey:Lcom/google/android/gms/internal/ads/zzua$zzs;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 4
    sget-object p2, Lcom/google/android/gms/internal/ads/zzuc;->zzdv:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_66

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzua$zzs;->zzel:Lcom/google/android/gms/internal/ads/zzelw;

    if-nez p1, :cond_2f

    .line 14
    const-class p2, Lcom/google/android/gms/internal/ads/zzua$zzs;

    monitor-enter p2

    .line 15
    :try_start_1d
    sget-object p1, Lcom/google/android/gms/internal/ads/zzua$zzs;->zzel:Lcom/google/android/gms/internal/ads/zzelw;

    if-nez p1, :cond_2a

    .line 17
    new-instance p1, Lcom/google/android/gms/internal/ads/zzejz$zza;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzua$zzs;->zzcey:Lcom/google/android/gms/internal/ads/zzua$zzs;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzejz$zza;-><init>(Lcom/google/android/gms/internal/ads/zzejz;)V

    .line 18
    sput-object p1, Lcom/google/android/gms/internal/ads/zzua$zzs;->zzel:Lcom/google/android/gms/internal/ads/zzelw;

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzua$zzs;->zzcey:Lcom/google/android/gms/internal/ads/zzua$zzs;

    return-object p1

    :pswitch_33
    const/4 p1, 0x5

    .line 7
    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzdw"

    aput-object v0, p1, p2

    const-string p2, "zzcch"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzcci"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuk;->zzw()Lcom/google/android/gms/internal/ads/zzekg;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzcck"

    aput-object p3, p1, p2

    .line 10
    sget-object p2, Lcom/google/android/gms/internal/ads/zzua$zzs;->zzcey:Lcom/google/android/gms/internal/ads/zzua$zzs;

    const-string p3, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u100c\u0001\u0003\u1009\u0002"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzua$zzs;->zza(Lcom/google/android/gms/internal/ads/zzelj;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 6
    :pswitch_59
    new-instance p1, Lcom/google/android/gms/internal/ads/zzua$zzs$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzua$zzs$zza;-><init>(Lcom/google/android/gms/internal/ads/zzuc;)V

    return-object p1

    .line 5
    :pswitch_5f
    new-instance p1, Lcom/google/android/gms/internal/ads/zzua$zzs;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzua$zzs;-><init>()V

    return-object p1

    nop

    :pswitch_data_66
    .packed-switch 0x1
        :pswitch_5f
        :pswitch_59
        :pswitch_33
        :pswitch_30
        :pswitch_16
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method
