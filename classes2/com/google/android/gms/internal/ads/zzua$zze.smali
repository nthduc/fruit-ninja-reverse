.class public final Lcom/google/android/gms/internal/ads/zzua$zze;
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
    name = "zze"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzua$zze$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzejz<",
        "Lcom/google/android/gms/internal/ads/zzua$zze;",
        "Lcom/google/android/gms/internal/ads/zzua$zze$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzell;"
    }
.end annotation


# static fields
.field private static final zzcap:Lcom/google/android/gms/internal/ads/zzua$zze;

.field private static volatile zzel:Lcom/google/android/gms/internal/ads/zzelw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzelw<",
            "Lcom/google/android/gms/internal/ads/zzua$zze;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzcak:Ljava/lang/String;

.field private zzcal:Lcom/google/android/gms/internal/ads/zzekk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzekk<",
            "Lcom/google/android/gms/internal/ads/zzua$zzc;",
            ">;"
        }
    .end annotation
.end field

.field private zzcam:I

.field private zzcan:I

.field private zzcao:I

.field private zzdw:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 37
    new-instance v0, Lcom/google/android/gms/internal/ads/zzua$zze;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzua$zze;-><init>()V

    .line 38
    sput-object v0, Lcom/google/android/gms/internal/ads/zzua$zze;->zzcap:Lcom/google/android/gms/internal/ads/zzua$zze;

    .line 39
    const-class v1, Lcom/google/android/gms/internal/ads/zzua$zze;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzejz;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzejz;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzejz;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzua$zze;->zzcak:Ljava/lang/String;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzua$zze;->zzbgk()Lcom/google/android/gms/internal/ads/zzekk;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzua$zze;->zzcal:Lcom/google/android/gms/internal/ads/zzekk;

    const/16 v0, 0x3e8

    .line 4
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzua$zze;->zzcam:I

    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzua$zze;->zzcan:I

    .line 6
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzua$zze;->zzcao:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzua$zze;Ljava/lang/String;)V
    .registers 2

    .line 36
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzua$zze;->zzby(Ljava/lang/String;)V

    return-void
.end method

.method private final zzby(Ljava/lang/String;)V
    .registers 3

    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzua$zze;->zzdw:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzua$zze;->zzdw:I

    .line 10
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzua$zze;->zzcak:Ljava/lang/String;

    return-void
.end method

.method public static zznq()Lcom/google/android/gms/internal/ads/zzua$zze;
    .registers 1

    .line 34
    sget-object v0, Lcom/google/android/gms/internal/ads/zzua$zze;->zzcap:Lcom/google/android/gms/internal/ads/zzua$zze;

    return-object v0
.end method

.method static synthetic zznr()Lcom/google/android/gms/internal/ads/zzua$zze;
    .registers 1

    .line 35
    sget-object v0, Lcom/google/android/gms/internal/ads/zzua$zze;->zzcap:Lcom/google/android/gms/internal/ads/zzua$zze;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 12
    sget-object p2, Lcom/google/android/gms/internal/ads/zzuc;->zzdv:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_86

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzua$zze;->zzel:Lcom/google/android/gms/internal/ads/zzelw;

    if-nez p1, :cond_2f

    .line 24
    const-class p2, Lcom/google/android/gms/internal/ads/zzua$zze;

    monitor-enter p2

    .line 25
    :try_start_1d
    sget-object p1, Lcom/google/android/gms/internal/ads/zzua$zze;->zzel:Lcom/google/android/gms/internal/ads/zzelw;

    if-nez p1, :cond_2a

    .line 27
    new-instance p1, Lcom/google/android/gms/internal/ads/zzejz$zza;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzua$zze;->zzcap:Lcom/google/android/gms/internal/ads/zzua$zze;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzejz$zza;-><init>(Lcom/google/android/gms/internal/ads/zzejz;)V

    .line 28
    sput-object p1, Lcom/google/android/gms/internal/ads/zzua$zze;->zzel:Lcom/google/android/gms/internal/ads/zzelw;

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzua$zze;->zzcap:Lcom/google/android/gms/internal/ads/zzua$zze;

    return-object p1

    :pswitch_33
    const/16 p1, 0xa

    .line 15
    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzdw"

    aput-object v0, p1, p2

    const-string p2, "zzcak"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzcal"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-class p3, Lcom/google/android/gms/internal/ads/zzua$zzc;

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzcam"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    .line 16
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuk;->zzw()Lcom/google/android/gms/internal/ads/zzekg;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "zzcan"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    .line 17
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuk;->zzw()Lcom/google/android/gms/internal/ads/zzekg;

    move-result-object p3

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "zzcao"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    .line 18
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuk;->zzw()Lcom/google/android/gms/internal/ads/zzekg;

    move-result-object p3

    aput-object p3, p1, p2

    .line 20
    sget-object p2, Lcom/google/android/gms/internal/ads/zzua$zze;->zzcap:Lcom/google/android/gms/internal/ads/zzua$zze;

    const-string p3, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0001\u0000\u0001\u1008\u0000\u0002\u001b\u0003\u100c\u0001\u0004\u100c\u0002\u0005\u100c\u0003"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzua$zze;->zza(Lcom/google/android/gms/internal/ads/zzelj;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 14
    :pswitch_79
    new-instance p1, Lcom/google/android/gms/internal/ads/zzua$zze$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzua$zze$zza;-><init>(Lcom/google/android/gms/internal/ads/zzuc;)V

    return-object p1

    .line 13
    :pswitch_7f
    new-instance p1, Lcom/google/android/gms/internal/ads/zzua$zze;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzua$zze;-><init>()V

    return-object p1

    nop

    :pswitch_data_86
    .packed-switch 0x1
        :pswitch_7f
        :pswitch_79
        :pswitch_33
        :pswitch_30
        :pswitch_16
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method
