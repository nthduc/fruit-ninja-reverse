.class public final Lcom/google/android/gms/internal/ads/zzefj$zzb;
.super Lcom/google/android/gms/internal/ads/zzejz;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzell;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzefj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzefj$zzb$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzejz<",
        "Lcom/google/android/gms/internal/ads/zzefj$zzb;",
        "Lcom/google/android/gms/internal/ads/zzefj$zzb$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzell;"
    }
.end annotation


# static fields
.field private static volatile zzel:Lcom/google/android/gms/internal/ads/zzelw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzelw<",
            "Lcom/google/android/gms/internal/ads/zzefj$zzb;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzial:Lcom/google/android/gms/internal/ads/zzefj$zzb;


# instance fields
.field private zzhzy:I

.field private zziai:Lcom/google/android/gms/internal/ads/zzefb;

.field private zziaj:I

.field private zziak:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 30
    new-instance v0, Lcom/google/android/gms/internal/ads/zzefj$zzb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzefj$zzb;-><init>()V

    .line 31
    sput-object v0, Lcom/google/android/gms/internal/ads/zzefj$zzb;->zzial:Lcom/google/android/gms/internal/ads/zzefj$zzb;

    .line 32
    const-class v1, Lcom/google/android/gms/internal/ads/zzefj$zzb;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzejz;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzejz;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzejz;-><init>()V

    return-void
.end method

.method static synthetic zzbcn()Lcom/google/android/gms/internal/ads/zzefj$zzb;
    .registers 1

    .line 29
    sget-object v0, Lcom/google/android/gms/internal/ads/zzefj$zzb;->zzial:Lcom/google/android/gms/internal/ads/zzefj$zzb;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 10
    sget-object p2, Lcom/google/android/gms/internal/ads/zzefk;->zzdv:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_5e

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzefj$zzb;->zzel:Lcom/google/android/gms/internal/ads/zzelw;

    if-nez p1, :cond_2f

    .line 19
    const-class p2, Lcom/google/android/gms/internal/ads/zzefj$zzb;

    monitor-enter p2

    .line 20
    :try_start_1d
    sget-object p1, Lcom/google/android/gms/internal/ads/zzefj$zzb;->zzel:Lcom/google/android/gms/internal/ads/zzelw;

    if-nez p1, :cond_2a

    .line 22
    new-instance p1, Lcom/google/android/gms/internal/ads/zzejz$zza;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzefj$zzb;->zzial:Lcom/google/android/gms/internal/ads/zzefj$zzb;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzejz$zza;-><init>(Lcom/google/android/gms/internal/ads/zzejz;)V

    .line 23
    sput-object p1, Lcom/google/android/gms/internal/ads/zzefj$zzb;->zzel:Lcom/google/android/gms/internal/ads/zzelw;

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzefj$zzb;->zzial:Lcom/google/android/gms/internal/ads/zzefj$zzb;

    return-object p1

    :pswitch_33
    const/4 p1, 0x4

    .line 13
    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zziai"

    aput-object v0, p1, p2

    const-string p2, "zziaj"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zziak"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzhzy"

    aput-object p3, p1, p2

    .line 15
    sget-object p2, Lcom/google/android/gms/internal/ads/zzefj$zzb;->zzial:Lcom/google/android/gms/internal/ads/zzefj$zzb;

    const-string p3, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\t\u0002\u000c\u0003\u000b\u0004\u000c"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzefj$zzb;->zza(Lcom/google/android/gms/internal/ads/zzelj;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 12
    :pswitch_52
    new-instance p1, Lcom/google/android/gms/internal/ads/zzefj$zzb$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzefj$zzb$zza;-><init>(Lcom/google/android/gms/internal/ads/zzefk;)V

    return-object p1

    .line 11
    :pswitch_58
    new-instance p1, Lcom/google/android/gms/internal/ads/zzefj$zzb;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzefj$zzb;-><init>()V

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

.method public final zzayu()Lcom/google/android/gms/internal/ads/zzefc;
    .registers 2

    .line 5
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzefj$zzb;->zziaj:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzefc;->zzff(I)Lcom/google/android/gms/internal/ads/zzefc;

    move-result-object v0

    if-nez v0, :cond_a

    .line 6
    sget-object v0, Lcom/google/android/gms/internal/ads/zzefc;->zzhzw:Lcom/google/android/gms/internal/ads/zzefc;

    :cond_a
    return-object v0
.end method

.method public final zzayv()Lcom/google/android/gms/internal/ads/zzefv;
    .registers 2

    .line 8
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzefj$zzb;->zzhzy:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzefv;->zzfm(I)Lcom/google/android/gms/internal/ads/zzefv;

    move-result-object v0

    if-nez v0, :cond_a

    .line 9
    sget-object v0, Lcom/google/android/gms/internal/ads/zzefv;->zzibd:Lcom/google/android/gms/internal/ads/zzefv;

    :cond_a
    return-object v0
.end method

.method public final zzbck()Z
    .registers 2

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzefj$zzb;->zziai:Lcom/google/android/gms/internal/ads/zzefb;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public final zzbcl()Lcom/google/android/gms/internal/ads/zzefb;
    .registers 2

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzefj$zzb;->zziai:Lcom/google/android/gms/internal/ads/zzefb;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzefb;->zzbbx()Lcom/google/android/gms/internal/ads/zzefb;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public final zzbcm()I
    .registers 2

    .line 7
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzefj$zzb;->zziak:I

    return v0
.end method
