.class public final Lcom/google/android/gms/internal/ads/zzua$zzc;
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
    name = "zzc"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzua$zzc$zzb;,
        Lcom/google/android/gms/internal/ads/zzua$zzc$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzejz<",
        "Lcom/google/android/gms/internal/ads/zzua$zzc;",
        "Lcom/google/android/gms/internal/ads/zzua$zzc$zzb;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzell;"
    }
.end annotation


# static fields
.field private static final zzbzt:Lcom/google/android/gms/internal/ads/zzua$zzc;

.field private static volatile zzel:Lcom/google/android/gms/internal/ads/zzelw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzelw<",
            "Lcom/google/android/gms/internal/ads/zzua$zzc;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzbzr:I

.field private zzbzs:Lcom/google/android/gms/internal/ads/zzua$zzr;

.field private zzdw:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 24
    new-instance v0, Lcom/google/android/gms/internal/ads/zzua$zzc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzua$zzc;-><init>()V

    .line 25
    sput-object v0, Lcom/google/android/gms/internal/ads/zzua$zzc;->zzbzt:Lcom/google/android/gms/internal/ads/zzua$zzc;

    .line 26
    const-class v1, Lcom/google/android/gms/internal/ads/zzua$zzc;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzejz;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzejz;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzejz;-><init>()V

    return-void
.end method

.method static synthetic zzno()Lcom/google/android/gms/internal/ads/zzua$zzc;
    .registers 1

    .line 23
    sget-object v0, Lcom/google/android/gms/internal/ads/zzua$zzc;->zzbzt:Lcom/google/android/gms/internal/ads/zzua$zzc;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 3
    sget-object p2, Lcom/google/android/gms/internal/ads/zzuc;->zzdv:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_60

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzua$zzc;->zzel:Lcom/google/android/gms/internal/ads/zzelw;

    if-nez p1, :cond_2f

    .line 13
    const-class p2, Lcom/google/android/gms/internal/ads/zzua$zzc;

    monitor-enter p2

    .line 14
    :try_start_1d
    sget-object p1, Lcom/google/android/gms/internal/ads/zzua$zzc;->zzel:Lcom/google/android/gms/internal/ads/zzelw;

    if-nez p1, :cond_2a

    .line 16
    new-instance p1, Lcom/google/android/gms/internal/ads/zzejz$zza;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzua$zzc;->zzbzt:Lcom/google/android/gms/internal/ads/zzua$zzc;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzejz$zza;-><init>(Lcom/google/android/gms/internal/ads/zzejz;)V

    .line 17
    sput-object p1, Lcom/google/android/gms/internal/ads/zzua$zzc;->zzel:Lcom/google/android/gms/internal/ads/zzelw;

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzua$zzc;->zzbzt:Lcom/google/android/gms/internal/ads/zzua$zzc;

    return-object p1

    :pswitch_33
    const/4 p1, 0x4

    .line 6
    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzdw"

    aput-object v0, p1, p2

    const-string p2, "zzbzr"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzua$zzc$zza;->zzw()Lcom/google/android/gms/internal/ads/zzekg;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzbzs"

    aput-object p3, p1, p2

    .line 9
    sget-object p2, Lcom/google/android/gms/internal/ads/zzua$zzc;->zzbzt:Lcom/google/android/gms/internal/ads/zzua$zzc;

    const-string p3, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u100c\u0000\u0002\u1009\u0001"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzua$zzc;->zza(Lcom/google/android/gms/internal/ads/zzelj;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 5
    :pswitch_54
    new-instance p1, Lcom/google/android/gms/internal/ads/zzua$zzc$zzb;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzua$zzc$zzb;-><init>(Lcom/google/android/gms/internal/ads/zzuc;)V

    return-object p1

    .line 4
    :pswitch_5a
    new-instance p1, Lcom/google/android/gms/internal/ads/zzua$zzc;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzua$zzc;-><init>()V

    return-object p1

    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_5a
        :pswitch_54
        :pswitch_33
        :pswitch_30
        :pswitch_16
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method
