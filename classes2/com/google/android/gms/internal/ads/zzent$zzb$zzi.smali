.class public final Lcom/google/android/gms/internal/ads/zzent$zzb$zzi;
.super Lcom/google/android/gms/internal/ads/zzejz;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzell;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzent$zzb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzi"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzent$zzb$zzi$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzejz<",
        "Lcom/google/android/gms/internal/ads/zzent$zzb$zzi;",
        "Lcom/google/android/gms/internal/ads/zzent$zzb$zzi$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzell;"
    }
.end annotation


# static fields
.field private static volatile zzel:Lcom/google/android/gms/internal/ads/zzelw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzelw<",
            "Lcom/google/android/gms/internal/ads/zzent$zzb$zzi;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzitm:Lcom/google/android/gms/internal/ads/zzent$zzb$zzi;


# instance fields
.field private zzdw:I

.field private zzitj:Ljava/lang/String;

.field private zzitk:J

.field private zzitl:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 38
    new-instance v0, Lcom/google/android/gms/internal/ads/zzent$zzb$zzi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzent$zzb$zzi;-><init>()V

    .line 39
    sput-object v0, Lcom/google/android/gms/internal/ads/zzent$zzb$zzi;->zzitm:Lcom/google/android/gms/internal/ads/zzent$zzb$zzi;

    .line 40
    const-class v1, Lcom/google/android/gms/internal/ads/zzent$zzb$zzi;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzejz;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzejz;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzejz;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzent$zzb$zzi;->zzitj:Ljava/lang/String;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzent$zzb$zzi;J)V
    .registers 3

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzent$zzb$zzi;->zzft(J)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzent$zzb$zzi;Ljava/lang/String;)V
    .registers 2

    .line 35
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzent$zzb$zzi;->zzig(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzent$zzb$zzi;Z)V
    .registers 2

    .line 37
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzent$zzb$zzi;->zzbw(Z)V

    return-void
.end method

.method public static zzbkc()Lcom/google/android/gms/internal/ads/zzent$zzb$zzi$zza;
    .registers 1

    .line 14
    sget-object v0, Lcom/google/android/gms/internal/ads/zzent$zzb$zzi;->zzitm:Lcom/google/android/gms/internal/ads/zzent$zzb$zzi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzejz;->zzbgf()Lcom/google/android/gms/internal/ads/zzejz$zzb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzent$zzb$zzi$zza;

    return-object v0
.end method

.method static synthetic zzbkd()Lcom/google/android/gms/internal/ads/zzent$zzb$zzi;
    .registers 1

    .line 34
    sget-object v0, Lcom/google/android/gms/internal/ads/zzent$zzb$zzi;->zzitm:Lcom/google/android/gms/internal/ads/zzent$zzb$zzi;

    return-object v0
.end method

.method private final zzbw(Z)V
    .registers 3

    .line 11
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzent$zzb$zzi;->zzdw:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzent$zzb$zzi;->zzdw:I

    .line 12
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzent$zzb$zzi;->zzitl:Z

    return-void
.end method

.method private final zzft(J)V
    .registers 4

    .line 8
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzent$zzb$zzi;->zzdw:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzent$zzb$zzi;->zzdw:I

    .line 9
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzent$zzb$zzi;->zzitk:J

    return-void
.end method

.method private final zzig(Ljava/lang/String;)V
    .registers 3

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzent$zzb$zzi;->zzdw:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzent$zzb$zzi;->zzdw:I

    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzent$zzb$zzi;->zzitj:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 15
    sget-object p2, Lcom/google/android/gms/internal/ads/zzenv;->zzdv:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_5e

    .line 33
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_10
    return-object p2

    .line 31
    :pswitch_11
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 22
    :pswitch_16
    sget-object p1, Lcom/google/android/gms/internal/ads/zzent$zzb$zzi;->zzel:Lcom/google/android/gms/internal/ads/zzelw;

    if-nez p1, :cond_2f

    .line 24
    const-class p2, Lcom/google/android/gms/internal/ads/zzent$zzb$zzi;

    monitor-enter p2

    .line 25
    :try_start_1d
    sget-object p1, Lcom/google/android/gms/internal/ads/zzent$zzb$zzi;->zzel:Lcom/google/android/gms/internal/ads/zzelw;

    if-nez p1, :cond_2a

    .line 27
    new-instance p1, Lcom/google/android/gms/internal/ads/zzejz$zza;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzent$zzb$zzi;->zzitm:Lcom/google/android/gms/internal/ads/zzent$zzb$zzi;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzejz$zza;-><init>(Lcom/google/android/gms/internal/ads/zzejz;)V

    .line 28
    sput-object p1, Lcom/google/android/gms/internal/ads/zzent$zzb$zzi;->zzel:Lcom/google/android/gms/internal/ads/zzelw;

    .line 29
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

    .line 21
    :pswitch_30
    sget-object p1, Lcom/google/android/gms/internal/ads/zzent$zzb$zzi;->zzitm:Lcom/google/android/gms/internal/ads/zzent$zzb$zzi;

    return-object p1

    :pswitch_33
    const/4 p1, 0x4

    .line 18
    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzdw"

    aput-object v0, p1, p2

    const-string p2, "zzitj"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzitk"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzitl"

    aput-object p3, p1, p2

    .line 20
    sget-object p2, Lcom/google/android/gms/internal/ads/zzent$zzb$zzi;->zzitm:Lcom/google/android/gms/internal/ads/zzent$zzb$zzi;

    const-string p3, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u1002\u0001\u0003\u1007\u0002"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzent$zzb$zzi;->zza(Lcom/google/android/gms/internal/ads/zzelj;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 17
    :pswitch_52
    new-instance p1, Lcom/google/android/gms/internal/ads/zzent$zzb$zzi$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzent$zzb$zzi$zza;-><init>(Lcom/google/android/gms/internal/ads/zzenv;)V

    return-object p1

    .line 16
    :pswitch_58
    new-instance p1, Lcom/google/android/gms/internal/ads/zzent$zzb$zzi;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzent$zzb$zzi;-><init>()V

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
