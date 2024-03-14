.class public final Lcom/google/android/gms/internal/ads/zzefm;
.super Lcom/google/android/gms/internal/ads/zzejz;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzell;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzefm$zzb;,
        Lcom/google/android/gms/internal/ads/zzefm$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzejz<",
        "Lcom/google/android/gms/internal/ads/zzefm;",
        "Lcom/google/android/gms/internal/ads/zzefm$zzb;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzell;"
    }
.end annotation


# static fields
.field private static volatile zzel:Lcom/google/android/gms/internal/ads/zzelw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzelw<",
            "Lcom/google/android/gms/internal/ads/zzefm;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzian:Lcom/google/android/gms/internal/ads/zzefm;


# instance fields
.field private zziaf:I

.field private zziam:Lcom/google/android/gms/internal/ads/zzekk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzekk<",
            "Lcom/google/android/gms/internal/ads/zzefm$zza;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 37
    new-instance v0, Lcom/google/android/gms/internal/ads/zzefm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzefm;-><init>()V

    .line 38
    sput-object v0, Lcom/google/android/gms/internal/ads/zzefm;->zzian:Lcom/google/android/gms/internal/ads/zzefm;

    .line 39
    const-class v1, Lcom/google/android/gms/internal/ads/zzefm;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzejz;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzejz;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzejz;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzefm;->zzbgk()Lcom/google/android/gms/internal/ads/zzekk;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzefm;->zziam:Lcom/google/android/gms/internal/ads/zzekk;

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzefm$zza;)V
    .registers 4

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzefm;->zziam:Lcom/google/android/gms/internal/ads/zzekk;

    .line 9
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzekk;->zzbeb()Z

    move-result v1

    if-nez v1, :cond_11

    .line 11
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzejz;->zza(Lcom/google/android/gms/internal/ads/zzekk;)Lcom/google/android/gms/internal/ads/zzekk;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzefm;->zziam:Lcom/google/android/gms/internal/ads/zzekk;

    .line 12
    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzefm;->zziam:Lcom/google/android/gms/internal/ads/zzekk;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzekk;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzefm;I)V
    .registers 2

    .line 35
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzefm;->zzfg(I)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzefm;Lcom/google/android/gms/internal/ads/zzefm$zza;)V
    .registers 2

    .line 36
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzefm;->zza(Lcom/google/android/gms/internal/ads/zzefm$zza;)V

    return-void
.end method

.method public static zzbco()Lcom/google/android/gms/internal/ads/zzefm$zzb;
    .registers 1

    .line 14
    sget-object v0, Lcom/google/android/gms/internal/ads/zzefm;->zzian:Lcom/google/android/gms/internal/ads/zzefm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzejz;->zzbgf()Lcom/google/android/gms/internal/ads/zzejz$zzb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzefm$zzb;

    return-object v0
.end method

.method static synthetic zzbcp()Lcom/google/android/gms/internal/ads/zzefm;
    .registers 1

    .line 34
    sget-object v0, Lcom/google/android/gms/internal/ads/zzefm;->zzian:Lcom/google/android/gms/internal/ads/zzefm;

    return-object v0
.end method

.method private final zzfg(I)V
    .registers 2

    .line 4
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzefm;->zziaf:I

    return-void
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 15
    sget-object p2, Lcom/google/android/gms/internal/ads/zzefl;->zzdv:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_5a

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzefm;->zzel:Lcom/google/android/gms/internal/ads/zzelw;

    if-nez p1, :cond_2f

    .line 24
    const-class p2, Lcom/google/android/gms/internal/ads/zzefm;

    monitor-enter p2

    .line 25
    :try_start_1d
    sget-object p1, Lcom/google/android/gms/internal/ads/zzefm;->zzel:Lcom/google/android/gms/internal/ads/zzelw;

    if-nez p1, :cond_2a

    .line 27
    new-instance p1, Lcom/google/android/gms/internal/ads/zzejz$zza;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzefm;->zzian:Lcom/google/android/gms/internal/ads/zzefm;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzejz$zza;-><init>(Lcom/google/android/gms/internal/ads/zzejz;)V

    .line 28
    sput-object p1, Lcom/google/android/gms/internal/ads/zzefm;->zzel:Lcom/google/android/gms/internal/ads/zzelw;

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzefm;->zzian:Lcom/google/android/gms/internal/ads/zzefm;

    return-object p1

    :pswitch_33
    const/4 p1, 0x3

    .line 18
    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zziaf"

    aput-object v0, p1, p2

    const-string p2, "zziam"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-class p3, Lcom/google/android/gms/internal/ads/zzefm$zza;

    aput-object p3, p1, p2

    .line 20
    sget-object p2, Lcom/google/android/gms/internal/ads/zzefm;->zzian:Lcom/google/android/gms/internal/ads/zzefm;

    const-string p3, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u000b\u0002\u001b"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzefm;->zza(Lcom/google/android/gms/internal/ads/zzelj;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 17
    :pswitch_4d
    new-instance p1, Lcom/google/android/gms/internal/ads/zzefm$zzb;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzefm$zzb;-><init>(Lcom/google/android/gms/internal/ads/zzefl;)V

    return-object p1

    .line 16
    :pswitch_53
    new-instance p1, Lcom/google/android/gms/internal/ads/zzefm;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzefm;-><init>()V

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
