.class public final Lcom/google/android/gms/internal/ads/zzefi;
.super Lcom/google/android/gms/internal/ads/zzejz;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzell;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzefi$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzejz<",
        "Lcom/google/android/gms/internal/ads/zzefi;",
        "Lcom/google/android/gms/internal/ads/zzefi$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzell;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static volatile zzel:Lcom/google/android/gms/internal/ads/zzelw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzelw<",
            "Lcom/google/android/gms/internal/ads/zzefi;",
            ">;"
        }
    .end annotation
.end field

.field private static final zziae:Lcom/google/android/gms/internal/ads/zzefi;


# instance fields
.field private zzhzh:Ljava/lang/String;

.field private zziaa:Ljava/lang/String;

.field private zziab:I

.field private zziac:Z

.field private zziad:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 31
    new-instance v0, Lcom/google/android/gms/internal/ads/zzefi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzefi;-><init>()V

    .line 32
    sput-object v0, Lcom/google/android/gms/internal/ads/zzefi;->zziae:Lcom/google/android/gms/internal/ads/zzefi;

    .line 33
    const-class v1, Lcom/google/android/gms/internal/ads/zzefi;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzejz;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzejz;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzejz;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzefi;->zziaa:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzefi;->zzhzh:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzefi;->zziad:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzbcf()Lcom/google/android/gms/internal/ads/zzefi;
    .registers 1

    .line 30
    sget-object v0, Lcom/google/android/gms/internal/ads/zzefi;->zziae:Lcom/google/android/gms/internal/ads/zzefi;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 11
    sget-object p2, Lcom/google/android/gms/internal/ads/zzefh;->zzdv:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_64

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzefi;->zzel:Lcom/google/android/gms/internal/ads/zzelw;

    if-nez p1, :cond_2f

    .line 20
    const-class p2, Lcom/google/android/gms/internal/ads/zzefi;

    monitor-enter p2

    .line 21
    :try_start_1d
    sget-object p1, Lcom/google/android/gms/internal/ads/zzefi;->zzel:Lcom/google/android/gms/internal/ads/zzelw;

    if-nez p1, :cond_2a

    .line 23
    new-instance p1, Lcom/google/android/gms/internal/ads/zzejz$zza;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzefi;->zziae:Lcom/google/android/gms/internal/ads/zzefi;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzejz$zza;-><init>(Lcom/google/android/gms/internal/ads/zzejz;)V

    .line 24
    sput-object p1, Lcom/google/android/gms/internal/ads/zzefi;->zzel:Lcom/google/android/gms/internal/ads/zzelw;

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzefi;->zziae:Lcom/google/android/gms/internal/ads/zzefi;

    return-object p1

    :pswitch_33
    const/4 p1, 0x5

    .line 14
    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zziaa"

    aput-object v0, p1, p2

    const-string p2, "zzhzh"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zziab"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zziac"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zziad"

    aput-object p3, p1, p2

    .line 16
    sget-object p2, Lcom/google/android/gms/internal/ads/zzefi;->zziae:Lcom/google/android/gms/internal/ads/zzefi;

    const-string p3, "\u0000\u0005\u0000\u0000\u0001\u0005\u0005\u0000\u0000\u0000\u0001\u0208\u0002\u0208\u0003\u000b\u0004\u0007\u0005\u0208"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzefi;->zza(Lcom/google/android/gms/internal/ads/zzelj;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 13
    :pswitch_57
    new-instance p1, Lcom/google/android/gms/internal/ads/zzefi$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzefi$zza;-><init>(Lcom/google/android/gms/internal/ads/zzefh;)V

    return-object p1

    .line 12
    :pswitch_5d
    new-instance p1, Lcom/google/android/gms/internal/ads/zzefi;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzefi;-><init>()V

    return-object p1

    nop

    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_5d
        :pswitch_57
        :pswitch_33
        :pswitch_30
        :pswitch_16
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method

.method public final zzbbt()Ljava/lang/String;
    .registers 2

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzefi;->zzhzh:Ljava/lang/String;

    return-object v0
.end method

.method public final zzbcb()Ljava/lang/String;
    .registers 2

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzefi;->zziaa:Ljava/lang/String;

    return-object v0
.end method

.method public final zzbcc()I
    .registers 2

    .line 8
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzefi;->zziab:I

    return v0
.end method

.method public final zzbcd()Z
    .registers 2

    .line 9
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzefi;->zziac:Z

    return v0
.end method

.method public final zzbce()Ljava/lang/String;
    .registers 2

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzefi;->zziad:Ljava/lang/String;

    return-object v0
.end method
