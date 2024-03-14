.class public final Lcom/google/android/gms/internal/ads/zzua$zzb;
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
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzua$zzb$zzb;,
        Lcom/google/android/gms/internal/ads/zzua$zzb$zza;,
        Lcom/google/android/gms/internal/ads/zzua$zzb$zze;,
        Lcom/google/android/gms/internal/ads/zzua$zzb$zzd;,
        Lcom/google/android/gms/internal/ads/zzua$zzb$zzc;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzejz<",
        "Lcom/google/android/gms/internal/ads/zzua$zzb;",
        "Lcom/google/android/gms/internal/ads/zzua$zzb$zzb;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzell;"
    }
.end annotation


# static fields
.field private static final zzbzh:Lcom/google/android/gms/internal/ads/zzua$zzb;

.field private static volatile zzel:Lcom/google/android/gms/internal/ads/zzelw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzelw<",
            "Lcom/google/android/gms/internal/ads/zzua$zzb;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzbzg:Lcom/google/android/gms/internal/ads/zzekk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzekk<",
            "Lcom/google/android/gms/internal/ads/zzua$zzb$zza;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 34
    new-instance v0, Lcom/google/android/gms/internal/ads/zzua$zzb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzua$zzb;-><init>()V

    .line 35
    sput-object v0, Lcom/google/android/gms/internal/ads/zzua$zzb;->zzbzh:Lcom/google/android/gms/internal/ads/zzua$zzb;

    .line 36
    const-class v1, Lcom/google/android/gms/internal/ads/zzua$zzb;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzejz;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzejz;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzejz;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzua$zzb;->zzbgk()Lcom/google/android/gms/internal/ads/zzekk;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzua$zzb;->zzbzg:Lcom/google/android/gms/internal/ads/zzekk;

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzua$zzb$zza;)V
    .registers 4

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzua$zzb;->zzbzg:Lcom/google/android/gms/internal/ads/zzekk;

    .line 7
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzekk;->zzbeb()Z

    move-result v1

    if-nez v1, :cond_11

    .line 9
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzejz;->zza(Lcom/google/android/gms/internal/ads/zzekk;)Lcom/google/android/gms/internal/ads/zzekk;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzua$zzb;->zzbzg:Lcom/google/android/gms/internal/ads/zzekk;

    .line 10
    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzua$zzb;->zzbzg:Lcom/google/android/gms/internal/ads/zzekk;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzekk;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzua$zzb;Lcom/google/android/gms/internal/ads/zzua$zzb$zza;)V
    .registers 2

    .line 33
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzua$zzb;->zza(Lcom/google/android/gms/internal/ads/zzua$zzb$zza;)V

    return-void
.end method

.method public static zzni()Lcom/google/android/gms/internal/ads/zzua$zzb$zzb;
    .registers 1

    .line 12
    sget-object v0, Lcom/google/android/gms/internal/ads/zzua$zzb;->zzbzh:Lcom/google/android/gms/internal/ads/zzua$zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzejz;->zzbgf()Lcom/google/android/gms/internal/ads/zzejz$zzb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzua$zzb$zzb;

    return-object v0
.end method

.method static synthetic zznj()Lcom/google/android/gms/internal/ads/zzua$zzb;
    .registers 1

    .line 32
    sget-object v0, Lcom/google/android/gms/internal/ads/zzua$zzb;->zzbzh:Lcom/google/android/gms/internal/ads/zzua$zzb;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 13
    sget-object p2, Lcom/google/android/gms/internal/ads/zzuc;->zzdv:[I

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzua$zzb;->zzel:Lcom/google/android/gms/internal/ads/zzelw;

    if-nez p1, :cond_2f

    .line 22
    const-class p2, Lcom/google/android/gms/internal/ads/zzua$zzb;

    monitor-enter p2

    .line 23
    :try_start_1d
    sget-object p1, Lcom/google/android/gms/internal/ads/zzua$zzb;->zzel:Lcom/google/android/gms/internal/ads/zzelw;

    if-nez p1, :cond_2a

    .line 25
    new-instance p1, Lcom/google/android/gms/internal/ads/zzejz$zza;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzua$zzb;->zzbzh:Lcom/google/android/gms/internal/ads/zzua$zzb;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzejz$zza;-><init>(Lcom/google/android/gms/internal/ads/zzejz;)V

    .line 26
    sput-object p1, Lcom/google/android/gms/internal/ads/zzua$zzb;->zzel:Lcom/google/android/gms/internal/ads/zzelw;

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzua$zzb;->zzbzh:Lcom/google/android/gms/internal/ads/zzua$zzb;

    return-object p1

    :pswitch_33
    const/4 p1, 0x2

    .line 16
    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzbzg"

    aput-object v0, p1, p2

    const-class p2, Lcom/google/android/gms/internal/ads/zzua$zzb$zza;

    aput-object p2, p1, p3

    .line 18
    sget-object p2, Lcom/google/android/gms/internal/ads/zzua$zzb;->zzbzh:Lcom/google/android/gms/internal/ads/zzua$zzb;

    const-string p3, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzua$zzb;->zza(Lcom/google/android/gms/internal/ads/zzelj;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 15
    :pswitch_48
    new-instance p1, Lcom/google/android/gms/internal/ads/zzua$zzb$zzb;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzua$zzb$zzb;-><init>(Lcom/google/android/gms/internal/ads/zzuc;)V

    return-object p1

    .line 14
    :pswitch_4e
    new-instance p1, Lcom/google/android/gms/internal/ads/zzua$zzb;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzua$zzb;-><init>()V

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
