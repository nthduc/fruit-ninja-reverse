.class public final Lcom/google/android/gms/internal/ads/zzua$zzae;
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
    name = "zzae"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzua$zzae$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzejz<",
        "Lcom/google/android/gms/internal/ads/zzua$zzae;",
        "Lcom/google/android/gms/internal/ads/zzua$zzae$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzell;"
    }
.end annotation


# static fields
.field private static final zzcgs:Lcom/google/android/gms/internal/ads/zzua$zzae;

.field private static volatile zzel:Lcom/google/android/gms/internal/ads/zzelw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzelw<",
            "Lcom/google/android/gms/internal/ads/zzua$zzae;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzcgq:Z

.field private zzcgr:I

.field private zzdw:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 33
    new-instance v0, Lcom/google/android/gms/internal/ads/zzua$zzae;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzua$zzae;-><init>()V

    .line 34
    sput-object v0, Lcom/google/android/gms/internal/ads/zzua$zzae;->zzcgs:Lcom/google/android/gms/internal/ads/zzua$zzae;

    .line 35
    const-class v1, Lcom/google/android/gms/internal/ads/zzua$zzae;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzejz;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzejz;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzejz;-><init>()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzua$zzae;I)V
    .registers 2

    .line 32
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzua$zzae;->zzcx(I)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzua$zzae;Z)V
    .registers 2

    .line 31
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzua$zzae;->zzw(Z)V

    return-void
.end method

.method private final zzcx(I)V
    .registers 3

    .line 7
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzua$zzae;->zzdw:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzua$zzae;->zzdw:I

    .line 8
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzua$zzae;->zzcgr:I

    return-void
.end method

.method public static zzpf()Lcom/google/android/gms/internal/ads/zzua$zzae$zza;
    .registers 1

    .line 10
    sget-object v0, Lcom/google/android/gms/internal/ads/zzua$zzae;->zzcgs:Lcom/google/android/gms/internal/ads/zzua$zzae;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzejz;->zzbgf()Lcom/google/android/gms/internal/ads/zzejz$zzb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzua$zzae$zza;

    return-object v0
.end method

.method static synthetic zzpg()Lcom/google/android/gms/internal/ads/zzua$zzae;
    .registers 1

    .line 30
    sget-object v0, Lcom/google/android/gms/internal/ads/zzua$zzae;->zzcgs:Lcom/google/android/gms/internal/ads/zzua$zzae;

    return-object v0
.end method

.method private final zzw(Z)V
    .registers 3

    .line 4
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzua$zzae;->zzdw:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzua$zzae;->zzdw:I

    .line 5
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzua$zzae;->zzcgq:Z

    return-void
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 11
    sget-object p2, Lcom/google/android/gms/internal/ads/zzuc;->zzdv:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_5a

    .line 29
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_10
    return-object p2

    .line 27
    :pswitch_11
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 18
    :pswitch_16
    sget-object p1, Lcom/google/android/gms/internal/ads/zzua$zzae;->zzel:Lcom/google/android/gms/internal/ads/zzelw;

    if-nez p1, :cond_2f

    .line 20
    const-class p2, Lcom/google/android/gms/internal/ads/zzua$zzae;

    monitor-enter p2

    .line 21
    :try_start_1d
    sget-object p1, Lcom/google/android/gms/internal/ads/zzua$zzae;->zzel:Lcom/google/android/gms/internal/ads/zzelw;

    if-nez p1, :cond_2a

    .line 23
    new-instance p1, Lcom/google/android/gms/internal/ads/zzejz$zza;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzua$zzae;->zzcgs:Lcom/google/android/gms/internal/ads/zzua$zzae;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzejz$zza;-><init>(Lcom/google/android/gms/internal/ads/zzejz;)V

    .line 24
    sput-object p1, Lcom/google/android/gms/internal/ads/zzua$zzae;->zzel:Lcom/google/android/gms/internal/ads/zzelw;

    .line 25
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

    .line 17
    :pswitch_30
    sget-object p1, Lcom/google/android/gms/internal/ads/zzua$zzae;->zzcgs:Lcom/google/android/gms/internal/ads/zzua$zzae;

    return-object p1

    :pswitch_33
    const/4 p1, 0x3

    .line 14
    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzdw"

    aput-object v0, p1, p2

    const-string p2, "zzcgq"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzcgr"

    aput-object p3, p1, p2

    .line 16
    sget-object p2, Lcom/google/android/gms/internal/ads/zzua$zzae;->zzcgs:Lcom/google/android/gms/internal/ads/zzua$zzae;

    const-string p3, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u1007\u0000\u0002\u1004\u0001"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzua$zzae;->zza(Lcom/google/android/gms/internal/ads/zzelj;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 13
    :pswitch_4d
    new-instance p1, Lcom/google/android/gms/internal/ads/zzua$zzae$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzua$zzae$zza;-><init>(Lcom/google/android/gms/internal/ads/zzuc;)V

    return-object p1

    .line 12
    :pswitch_53
    new-instance p1, Lcom/google/android/gms/internal/ads/zzua$zzae;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzua$zzae;-><init>()V

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

.method public final zzpe()Z
    .registers 2

    .line 3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzua$zzae;->zzcgq:Z

    return v0
.end method
