.class public final Lcom/google/android/gms/internal/ads/zzua$zzb$zzd;
.super Lcom/google/android/gms/internal/ads/zzejz;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzell;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzua$zzb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzd"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzua$zzb$zzd$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzejz<",
        "Lcom/google/android/gms/internal/ads/zzua$zzb$zzd;",
        "Lcom/google/android/gms/internal/ads/zzua$zzb$zzd$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzell;"
    }
.end annotation


# static fields
.field private static final zzbzn:Lcom/google/android/gms/internal/ads/zzua$zzb$zzd;

.field private static volatile zzel:Lcom/google/android/gms/internal/ads/zzelw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzelw<",
            "Lcom/google/android/gms/internal/ads/zzua$zzb$zzd;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzbzl:Z

.field private zzbzm:I

.field private zzdw:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 32
    new-instance v0, Lcom/google/android/gms/internal/ads/zzua$zzb$zzd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzua$zzb$zzd;-><init>()V

    .line 33
    sput-object v0, Lcom/google/android/gms/internal/ads/zzua$zzb$zzd;->zzbzn:Lcom/google/android/gms/internal/ads/zzua$zzb$zzd;

    .line 34
    const-class v1, Lcom/google/android/gms/internal/ads/zzua$zzb$zzd;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzejz;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzejz;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzejz;-><init>()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzua$zzb$zzd;I)V
    .registers 2

    .line 31
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzua$zzb$zzd;->zzcb(I)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzua$zzb$zzd;Z)V
    .registers 2

    .line 30
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzua$zzb$zzd;->zzq(Z)V

    return-void
.end method

.method private final zzcb(I)V
    .registers 3

    .line 6
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzua$zzb$zzd;->zzdw:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzua$zzb$zzd;->zzdw:I

    .line 7
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzua$zzb$zzd;->zzbzm:I

    return-void
.end method

.method public static zznk()Lcom/google/android/gms/internal/ads/zzua$zzb$zzd$zza;
    .registers 1

    .line 9
    sget-object v0, Lcom/google/android/gms/internal/ads/zzua$zzb$zzd;->zzbzn:Lcom/google/android/gms/internal/ads/zzua$zzb$zzd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzejz;->zzbgf()Lcom/google/android/gms/internal/ads/zzejz$zzb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzua$zzb$zzd$zza;

    return-object v0
.end method

.method static synthetic zznl()Lcom/google/android/gms/internal/ads/zzua$zzb$zzd;
    .registers 1

    .line 29
    sget-object v0, Lcom/google/android/gms/internal/ads/zzua$zzb$zzd;->zzbzn:Lcom/google/android/gms/internal/ads/zzua$zzb$zzd;

    return-object v0
.end method

.method private final zzq(Z)V
    .registers 3

    .line 3
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzua$zzb$zzd;->zzdw:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzua$zzb$zzd;->zzdw:I

    .line 4
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzua$zzb$zzd;->zzbzl:Z

    return-void
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

    packed-switch p1, :pswitch_data_5a

    .line 28
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_10
    return-object p2

    .line 26
    :pswitch_11
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 17
    :pswitch_16
    sget-object p1, Lcom/google/android/gms/internal/ads/zzua$zzb$zzd;->zzel:Lcom/google/android/gms/internal/ads/zzelw;

    if-nez p1, :cond_2f

    .line 19
    const-class p2, Lcom/google/android/gms/internal/ads/zzua$zzb$zzd;

    monitor-enter p2

    .line 20
    :try_start_1d
    sget-object p1, Lcom/google/android/gms/internal/ads/zzua$zzb$zzd;->zzel:Lcom/google/android/gms/internal/ads/zzelw;

    if-nez p1, :cond_2a

    .line 22
    new-instance p1, Lcom/google/android/gms/internal/ads/zzejz$zza;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzua$zzb$zzd;->zzbzn:Lcom/google/android/gms/internal/ads/zzua$zzb$zzd;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzejz$zza;-><init>(Lcom/google/android/gms/internal/ads/zzejz;)V

    .line 23
    sput-object p1, Lcom/google/android/gms/internal/ads/zzua$zzb$zzd;->zzel:Lcom/google/android/gms/internal/ads/zzelw;

    .line 24
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

    .line 16
    :pswitch_30
    sget-object p1, Lcom/google/android/gms/internal/ads/zzua$zzb$zzd;->zzbzn:Lcom/google/android/gms/internal/ads/zzua$zzb$zzd;

    return-object p1

    :pswitch_33
    const/4 p1, 0x3

    .line 13
    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzdw"

    aput-object v0, p1, p2

    const-string p2, "zzbzl"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzbzm"

    aput-object p3, p1, p2

    .line 15
    sget-object p2, Lcom/google/android/gms/internal/ads/zzua$zzb$zzd;->zzbzn:Lcom/google/android/gms/internal/ads/zzua$zzb$zzd;

    const-string p3, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u1007\u0000\u0002\u100b\u0001"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzua$zzb$zzd;->zza(Lcom/google/android/gms/internal/ads/zzelj;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 12
    :pswitch_4d
    new-instance p1, Lcom/google/android/gms/internal/ads/zzua$zzb$zzd$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzua$zzb$zzd$zza;-><init>(Lcom/google/android/gms/internal/ads/zzuc;)V

    return-object p1

    .line 11
    :pswitch_53
    new-instance p1, Lcom/google/android/gms/internal/ads/zzua$zzb$zzd;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzua$zzb$zzd;-><init>()V

    return-object p1

    nop

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_53
        :pswitch_4d
        :pswitch_33
        :pswitch_30
        :pswitch_16
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method
