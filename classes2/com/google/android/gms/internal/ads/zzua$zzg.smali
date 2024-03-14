.class public final Lcom/google/android/gms/internal/ads/zzua$zzg;
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
    name = "zzg"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzua$zzg$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzejz<",
        "Lcom/google/android/gms/internal/ads/zzua$zzg;",
        "Lcom/google/android/gms/internal/ads/zzua$zzg$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzell;"
    }
.end annotation


# static fields
.field private static final zzcbf:Lcom/google/android/gms/internal/ads/zzua$zzg;

.field private static volatile zzel:Lcom/google/android/gms/internal/ads/zzelw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzelw<",
            "Lcom/google/android/gms/internal/ads/zzua$zzg;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzcax:Ljava/lang/String;

.field private zzcay:Lcom/google/android/gms/internal/ads/zzua$zzt;

.field private zzcaz:I

.field private zzcba:Lcom/google/android/gms/internal/ads/zzua$zzu;

.field private zzcbb:I

.field private zzcbc:I

.field private zzcbd:I

.field private zzcbe:I

.field private zzdw:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 41
    new-instance v0, Lcom/google/android/gms/internal/ads/zzua$zzg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzua$zzg;-><init>()V

    .line 42
    sput-object v0, Lcom/google/android/gms/internal/ads/zzua$zzg;->zzcbf:Lcom/google/android/gms/internal/ads/zzua$zzg;

    .line 43
    const-class v1, Lcom/google/android/gms/internal/ads/zzua$zzg;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzejz;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzejz;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzejz;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzua$zzg;->zzcax:Ljava/lang/String;

    const/16 v0, 0x3e8

    .line 3
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzua$zzg;->zzcbc:I

    .line 4
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzua$zzg;->zzcbd:I

    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzua$zzg;->zzcbe:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzua$zzg;Lcom/google/android/gms/internal/ads/zzua$zzu;)V
    .registers 2

    .line 40
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzua$zzg;->zzb(Lcom/google/android/gms/internal/ads/zzua$zzu;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzua$zzg;Ljava/lang/String;)V
    .registers 2

    .line 39
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzua$zzg;->zzca(Ljava/lang/String;)V

    return-void
.end method

.method private final zzb(Lcom/google/android/gms/internal/ads/zzua$zzu;)V
    .registers 2

    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzua$zzg;->zzcba:Lcom/google/android/gms/internal/ads/zzua$zzu;

    .line 13
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzua$zzg;->zzdw:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzua$zzg;->zzdw:I

    return-void
.end method

.method private final zzca(Ljava/lang/String;)V
    .registers 3

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzua$zzg;->zzdw:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzua$zzg;->zzdw:I

    .line 9
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzua$zzg;->zzcax:Ljava/lang/String;

    return-void
.end method

.method public static zznt()Lcom/google/android/gms/internal/ads/zzua$zzg;
    .registers 1

    .line 37
    sget-object v0, Lcom/google/android/gms/internal/ads/zzua$zzg;->zzcbf:Lcom/google/android/gms/internal/ads/zzua$zzg;

    return-object v0
.end method

.method static synthetic zznu()Lcom/google/android/gms/internal/ads/zzua$zzg;
    .registers 1

    .line 38
    sget-object v0, Lcom/google/android/gms/internal/ads/zzua$zzg;->zzcbf:Lcom/google/android/gms/internal/ads/zzua$zzg;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 15
    sget-object p2, Lcom/google/android/gms/internal/ads/zzuc;->zzdv:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_92

    .line 36
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_10
    return-object p2

    .line 34
    :pswitch_11
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 25
    :pswitch_16
    sget-object p1, Lcom/google/android/gms/internal/ads/zzua$zzg;->zzel:Lcom/google/android/gms/internal/ads/zzelw;

    if-nez p1, :cond_2f

    .line 27
    const-class p2, Lcom/google/android/gms/internal/ads/zzua$zzg;

    monitor-enter p2

    .line 28
    :try_start_1d
    sget-object p1, Lcom/google/android/gms/internal/ads/zzua$zzg;->zzel:Lcom/google/android/gms/internal/ads/zzelw;

    if-nez p1, :cond_2a

    .line 30
    new-instance p1, Lcom/google/android/gms/internal/ads/zzejz$zza;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzua$zzg;->zzcbf:Lcom/google/android/gms/internal/ads/zzua$zzg;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzejz$zza;-><init>(Lcom/google/android/gms/internal/ads/zzejz;)V

    .line 31
    sput-object p1, Lcom/google/android/gms/internal/ads/zzua$zzg;->zzel:Lcom/google/android/gms/internal/ads/zzelw;

    .line 32
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

    .line 24
    :pswitch_30
    sget-object p1, Lcom/google/android/gms/internal/ads/zzua$zzg;->zzcbf:Lcom/google/android/gms/internal/ads/zzua$zzg;

    return-object p1

    :pswitch_33
    const/16 p1, 0xc

    .line 18
    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzdw"

    aput-object v0, p1, p2

    const-string p2, "zzcax"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzcay"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzcaz"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzcba"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzcbb"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "zzcbc"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    .line 19
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuk;->zzw()Lcom/google/android/gms/internal/ads/zzekg;

    move-result-object p3

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "zzcbd"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    .line 20
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuk;->zzw()Lcom/google/android/gms/internal/ads/zzekg;

    move-result-object p3

    aput-object p3, p1, p2

    const/16 p2, 0xa

    const-string p3, "zzcbe"

    aput-object p3, p1, p2

    const/16 p2, 0xb

    .line 21
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuk;->zzw()Lcom/google/android/gms/internal/ads/zzekg;

    move-result-object p3

    aput-object p3, p1, p2

    .line 23
    sget-object p2, Lcom/google/android/gms/internal/ads/zzua$zzg;->zzcbf:Lcom/google/android/gms/internal/ads/zzua$zzg;

    const-string p3, "\u0001\u0008\u0000\u0001\u0001\u0008\u0008\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u1009\u0001\u0003\u1004\u0002\u0004\u1009\u0003\u0005\u1004\u0004\u0006\u100c\u0005\u0007\u100c\u0006\u0008\u100c\u0007"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzua$zzg;->zza(Lcom/google/android/gms/internal/ads/zzelj;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 17
    :pswitch_85
    new-instance p1, Lcom/google/android/gms/internal/ads/zzua$zzg$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzua$zzg$zza;-><init>(Lcom/google/android/gms/internal/ads/zzuc;)V

    return-object p1

    .line 16
    :pswitch_8b
    new-instance p1, Lcom/google/android/gms/internal/ads/zzua$zzg;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzua$zzg;-><init>()V

    return-object p1

    nop

    :pswitch_data_92
    .packed-switch 0x1
        :pswitch_8b
        :pswitch_85
        :pswitch_33
        :pswitch_30
        :pswitch_16
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method
