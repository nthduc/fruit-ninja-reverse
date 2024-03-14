.class public final Lcom/google/android/gms/internal/ads/zzua$zzm;
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
    name = "zzm"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzua$zzm$zza;,
        Lcom/google/android/gms/internal/ads/zzua$zzm$zzb;,
        Lcom/google/android/gms/internal/ads/zzua$zzm$zzc;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzejz<",
        "Lcom/google/android/gms/internal/ads/zzua$zzm;",
        "Lcom/google/android/gms/internal/ads/zzua$zzm$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzell;"
    }
.end annotation


# static fields
.field private static final zzccs:Lcom/google/android/gms/internal/ads/zzua$zzm;

.field private static volatile zzel:Lcom/google/android/gms/internal/ads/zzelw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzelw<",
            "Lcom/google/android/gms/internal/ads/zzua$zzm;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzbzr:I

.field private zzccr:I

.field private zzdw:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 34
    new-instance v0, Lcom/google/android/gms/internal/ads/zzua$zzm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzua$zzm;-><init>()V

    .line 35
    sput-object v0, Lcom/google/android/gms/internal/ads/zzua$zzm;->zzccs:Lcom/google/android/gms/internal/ads/zzua$zzm;

    .line 36
    const-class v1, Lcom/google/android/gms/internal/ads/zzua$zzm;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzejz;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzejz;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzejz;-><init>()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzua$zzm;Lcom/google/android/gms/internal/ads/zzua$zzm$zzb;)V
    .registers 2

    .line 33
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzua$zzm;->zzb(Lcom/google/android/gms/internal/ads/zzua$zzm$zzb;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzua$zzm;Lcom/google/android/gms/internal/ads/zzua$zzm$zzc;)V
    .registers 2

    .line 32
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzua$zzm;->zzb(Lcom/google/android/gms/internal/ads/zzua$zzm$zzc;)V

    return-void
.end method

.method private final zzb(Lcom/google/android/gms/internal/ads/zzua$zzm$zzb;)V
    .registers 2

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzua$zzm$zzb;->zzv()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzua$zzm;->zzccr:I

    .line 7
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzua$zzm;->zzdw:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzua$zzm;->zzdw:I

    return-void
.end method

.method private final zzb(Lcom/google/android/gms/internal/ads/zzua$zzm$zzc;)V
    .registers 2

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzua$zzm$zzc;->zzv()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzua$zzm;->zzbzr:I

    .line 4
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzua$zzm;->zzdw:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzua$zzm;->zzdw:I

    return-void
.end method

.method public static zzog()Lcom/google/android/gms/internal/ads/zzua$zzm$zza;
    .registers 1

    .line 9
    sget-object v0, Lcom/google/android/gms/internal/ads/zzua$zzm;->zzccs:Lcom/google/android/gms/internal/ads/zzua$zzm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzejz;->zzbgf()Lcom/google/android/gms/internal/ads/zzejz$zzb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzua$zzm$zza;

    return-object v0
.end method

.method static synthetic zzoh()Lcom/google/android/gms/internal/ads/zzua$zzm;
    .registers 1

    .line 31
    sget-object v0, Lcom/google/android/gms/internal/ads/zzua$zzm;->zzccs:Lcom/google/android/gms/internal/ads/zzua$zzm;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 10
    sget-object p2, Lcom/google/android/gms/internal/ads/zzuc;->zzdv:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_68

    .line 30
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_10
    return-object p2

    .line 28
    :pswitch_11
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 19
    :pswitch_16
    sget-object p1, Lcom/google/android/gms/internal/ads/zzua$zzm;->zzel:Lcom/google/android/gms/internal/ads/zzelw;

    if-nez p1, :cond_2f

    .line 21
    const-class p2, Lcom/google/android/gms/internal/ads/zzua$zzm;

    monitor-enter p2

    .line 22
    :try_start_1d
    sget-object p1, Lcom/google/android/gms/internal/ads/zzua$zzm;->zzel:Lcom/google/android/gms/internal/ads/zzelw;

    if-nez p1, :cond_2a

    .line 24
    new-instance p1, Lcom/google/android/gms/internal/ads/zzejz$zza;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzua$zzm;->zzccs:Lcom/google/android/gms/internal/ads/zzua$zzm;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzejz$zza;-><init>(Lcom/google/android/gms/internal/ads/zzejz;)V

    .line 25
    sput-object p1, Lcom/google/android/gms/internal/ads/zzua$zzm;->zzel:Lcom/google/android/gms/internal/ads/zzelw;

    .line 26
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

    .line 18
    :pswitch_30
    sget-object p1, Lcom/google/android/gms/internal/ads/zzua$zzm;->zzccs:Lcom/google/android/gms/internal/ads/zzua$zzm;

    return-object p1

    :pswitch_33
    const/4 p1, 0x5

    .line 13
    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzdw"

    aput-object v0, p1, p2

    const-string p2, "zzbzr"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    .line 14
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzua$zzm$zzc;->zzw()Lcom/google/android/gms/internal/ads/zzekg;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzccr"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    .line 15
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzua$zzm$zzb;->zzw()Lcom/google/android/gms/internal/ads/zzekg;

    move-result-object p3

    aput-object p3, p1, p2

    .line 17
    sget-object p2, Lcom/google/android/gms/internal/ads/zzua$zzm;->zzccs:Lcom/google/android/gms/internal/ads/zzua$zzm;

    const-string p3, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u100c\u0000\u0002\u100c\u0001"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzua$zzm;->zza(Lcom/google/android/gms/internal/ads/zzelj;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 12
    :pswitch_5b
    new-instance p1, Lcom/google/android/gms/internal/ads/zzua$zzm$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzua$zzm$zza;-><init>(Lcom/google/android/gms/internal/ads/zzuc;)V

    return-object p1

    .line 11
    :pswitch_61
    new-instance p1, Lcom/google/android/gms/internal/ads/zzua$zzm;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzua$zzm;-><init>()V

    return-object p1

    nop

    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_61
        :pswitch_5b
        :pswitch_33
        :pswitch_30
        :pswitch_16
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method
