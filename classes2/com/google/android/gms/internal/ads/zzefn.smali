.class public final Lcom/google/android/gms/internal/ads/zzefn;
.super Lcom/google/android/gms/internal/ads/zzejz;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzell;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzefn$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzejz<",
        "Lcom/google/android/gms/internal/ads/zzefn;",
        "Lcom/google/android/gms/internal/ads/zzefn$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzell;"
    }
.end annotation


# static fields
.field private static volatile zzel:Lcom/google/android/gms/internal/ads/zzelw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzelw<",
            "Lcom/google/android/gms/internal/ads/zzefn;",
            ">;"
        }
    .end annotation
.end field

.field private static final zziaq:Lcom/google/android/gms/internal/ads/zzefn;


# instance fields
.field private zzhwq:I

.field private zziap:Lcom/google/android/gms/internal/ads/zzefq;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 34
    new-instance v0, Lcom/google/android/gms/internal/ads/zzefn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzefn;-><init>()V

    .line 35
    sput-object v0, Lcom/google/android/gms/internal/ads/zzefn;->zziaq:Lcom/google/android/gms/internal/ads/zzefn;

    .line 36
    const-class v1, Lcom/google/android/gms/internal/ads/zzefn;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzejz;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzejz;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzejz;-><init>()V

    return-void
.end method

.method private final setVersion(I)V
    .registers 2

    .line 4
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzefn;->zzhwq:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzefn;I)V
    .registers 2

    .line 32
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzefn;->setVersion(I)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzefn;Lcom/google/android/gms/internal/ads/zzefq;)V
    .registers 2

    .line 33
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzefn;->zza(Lcom/google/android/gms/internal/ads/zzefq;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzefq;)V
    .registers 2

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzefn;->zziap:Lcom/google/android/gms/internal/ads/zzefq;

    return-void
.end method

.method public static zzbct()Lcom/google/android/gms/internal/ads/zzefn$zza;
    .registers 1

    .line 11
    sget-object v0, Lcom/google/android/gms/internal/ads/zzefn;->zziaq:Lcom/google/android/gms/internal/ads/zzefn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzejz;->zzbgf()Lcom/google/android/gms/internal/ads/zzejz$zzb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzefn$zza;

    return-object v0
.end method

.method static synthetic zzbcu()Lcom/google/android/gms/internal/ads/zzefn;
    .registers 1

    .line 31
    sget-object v0, Lcom/google/android/gms/internal/ads/zzefn;->zziaq:Lcom/google/android/gms/internal/ads/zzefn;

    return-object v0
.end method

.method public static zzt(Lcom/google/android/gms/internal/ads/zzeip;Lcom/google/android/gms/internal/ads/zzejm;)Lcom/google/android/gms/internal/ads/zzefn;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzekj;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/google/android/gms/internal/ads/zzefn;->zziaq:Lcom/google/android/gms/internal/ads/zzefn;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzejz;->zza(Lcom/google/android/gms/internal/ads/zzejz;Lcom/google/android/gms/internal/ads/zzeip;Lcom/google/android/gms/internal/ads/zzejm;)Lcom/google/android/gms/internal/ads/zzejz;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzefn;

    return-object p0
.end method


# virtual methods
.method public final getVersion()I
    .registers 2

    .line 3
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzefn;->zzhwq:I

    return v0
.end method

.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 12
    sget-object p2, Lcom/google/android/gms/internal/ads/zzefo;->zzdv:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_54

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzefn;->zzel:Lcom/google/android/gms/internal/ads/zzelw;

    if-nez p1, :cond_2f

    .line 21
    const-class p2, Lcom/google/android/gms/internal/ads/zzefn;

    monitor-enter p2

    .line 22
    :try_start_1d
    sget-object p1, Lcom/google/android/gms/internal/ads/zzefn;->zzel:Lcom/google/android/gms/internal/ads/zzelw;

    if-nez p1, :cond_2a

    .line 24
    new-instance p1, Lcom/google/android/gms/internal/ads/zzejz$zza;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzefn;->zziaq:Lcom/google/android/gms/internal/ads/zzefn;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzejz$zza;-><init>(Lcom/google/android/gms/internal/ads/zzejz;)V

    .line 25
    sput-object p1, Lcom/google/android/gms/internal/ads/zzefn;->zzel:Lcom/google/android/gms/internal/ads/zzelw;

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzefn;->zziaq:Lcom/google/android/gms/internal/ads/zzefn;

    return-object p1

    :pswitch_33
    const/4 p1, 0x2

    .line 15
    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzhwq"

    aput-object v0, p1, p2

    const-string p2, "zziap"

    aput-object p2, p1, p3

    .line 17
    sget-object p2, Lcom/google/android/gms/internal/ads/zzefn;->zziaq:Lcom/google/android/gms/internal/ads/zzefn;

    const-string p3, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000b\u0002\t"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzefn;->zza(Lcom/google/android/gms/internal/ads/zzelj;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 14
    :pswitch_48
    new-instance p1, Lcom/google/android/gms/internal/ads/zzefn$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzefn$zza;-><init>(Lcom/google/android/gms/internal/ads/zzefo;)V

    return-object p1

    .line 13
    :pswitch_4e
    new-instance p1, Lcom/google/android/gms/internal/ads/zzefn;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzefn;-><init>()V

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

.method public final zzbcs()Lcom/google/android/gms/internal/ads/zzefq;
    .registers 2

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzefn;->zziap:Lcom/google/android/gms/internal/ads/zzefq;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzefq;->zzbcw()Lcom/google/android/gms/internal/ads/zzefq;

    move-result-object v0

    :cond_8
    return-object v0
.end method
