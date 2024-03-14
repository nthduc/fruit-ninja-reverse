.class public final Lcom/google/android/gms/internal/ads/zzeei;
.super Lcom/google/android/gms/internal/ads/zzejz;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzell;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzeei$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzejz<",
        "Lcom/google/android/gms/internal/ads/zzeei;",
        "Lcom/google/android/gms/internal/ads/zzeei$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzell;"
    }
.end annotation


# static fields
.field private static volatile zzel:Lcom/google/android/gms/internal/ads/zzelw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzelw<",
            "Lcom/google/android/gms/internal/ads/zzeei;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzhye:Lcom/google/android/gms/internal/ads/zzeei;


# instance fields
.field private zzhyb:Lcom/google/android/gms/internal/ads/zzeep;

.field private zzhyc:Lcom/google/android/gms/internal/ads/zzeed;

.field private zzhyd:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 28
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeei;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzeei;-><init>()V

    .line 29
    sput-object v0, Lcom/google/android/gms/internal/ads/zzeei;->zzhye:Lcom/google/android/gms/internal/ads/zzeei;

    .line 30
    const-class v1, Lcom/google/android/gms/internal/ads/zzeei;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzejz;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzejz;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzejz;-><init>()V

    return-void
.end method

.method public static zzbav()Lcom/google/android/gms/internal/ads/zzeei;
    .registers 1

    .line 26
    sget-object v0, Lcom/google/android/gms/internal/ads/zzeei;->zzhye:Lcom/google/android/gms/internal/ads/zzeei;

    return-object v0
.end method

.method static synthetic zzbaw()Lcom/google/android/gms/internal/ads/zzeei;
    .registers 1

    .line 27
    sget-object v0, Lcom/google/android/gms/internal/ads/zzeei;->zzhye:Lcom/google/android/gms/internal/ads/zzeei;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 7
    sget-object p2, Lcom/google/android/gms/internal/ads/zzeej;->zzdv:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_5a

    .line 25
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_10
    return-object p2

    .line 23
    :pswitch_11
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 14
    :pswitch_16
    sget-object p1, Lcom/google/android/gms/internal/ads/zzeei;->zzel:Lcom/google/android/gms/internal/ads/zzelw;

    if-nez p1, :cond_2f

    .line 16
    const-class p2, Lcom/google/android/gms/internal/ads/zzeei;

    monitor-enter p2

    .line 17
    :try_start_1d
    sget-object p1, Lcom/google/android/gms/internal/ads/zzeei;->zzel:Lcom/google/android/gms/internal/ads/zzelw;

    if-nez p1, :cond_2a

    .line 19
    new-instance p1, Lcom/google/android/gms/internal/ads/zzejz$zza;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzeei;->zzhye:Lcom/google/android/gms/internal/ads/zzeei;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzejz$zza;-><init>(Lcom/google/android/gms/internal/ads/zzejz;)V

    .line 20
    sput-object p1, Lcom/google/android/gms/internal/ads/zzeei;->zzel:Lcom/google/android/gms/internal/ads/zzelw;

    .line 21
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

    .line 13
    :pswitch_30
    sget-object p1, Lcom/google/android/gms/internal/ads/zzeei;->zzhye:Lcom/google/android/gms/internal/ads/zzeei;

    return-object p1

    :pswitch_33
    const/4 p1, 0x3

    .line 10
    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzhyb"

    aput-object v0, p1, p2

    const-string p2, "zzhyc"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzhyd"

    aput-object p3, p1, p2

    .line 12
    sget-object p2, Lcom/google/android/gms/internal/ads/zzeei;->zzhye:Lcom/google/android/gms/internal/ads/zzeei;

    const-string p3, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\t\u0002\t\u0003\u000c"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzeei;->zza(Lcom/google/android/gms/internal/ads/zzelj;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 9
    :pswitch_4d
    new-instance p1, Lcom/google/android/gms/internal/ads/zzeei$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzeei$zza;-><init>(Lcom/google/android/gms/internal/ads/zzeej;)V

    return-object p1

    .line 8
    :pswitch_53
    new-instance p1, Lcom/google/android/gms/internal/ads/zzeei;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzeei;-><init>()V

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

.method public final zzbas()Lcom/google/android/gms/internal/ads/zzeep;
    .registers 2

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeei;->zzhyb:Lcom/google/android/gms/internal/ads/zzeep;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeep;->zzbbi()Lcom/google/android/gms/internal/ads/zzeep;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public final zzbat()Lcom/google/android/gms/internal/ads/zzeed;
    .registers 2

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeei;->zzhyc:Lcom/google/android/gms/internal/ads/zzeed;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeed;->zzbao()Lcom/google/android/gms/internal/ads/zzeed;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public final zzbau()Lcom/google/android/gms/internal/ads/zzeec;
    .registers 2

    .line 5
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzeei;->zzhyd:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzeec;->zzey(I)Lcom/google/android/gms/internal/ads/zzeec;

    move-result-object v0

    if-nez v0, :cond_a

    .line 6
    sget-object v0, Lcom/google/android/gms/internal/ads/zzeec;->zzhxv:Lcom/google/android/gms/internal/ads/zzeec;

    :cond_a
    return-object v0
.end method
