.class public final Lcom/google/android/gms/internal/ads/zzby$zzb;
.super Lcom/google/android/gms/internal/ads/zzejz;
.source "com.google.android.gms:play-services-gass@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzell;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzby;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzby$zzb$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzejz<",
        "Lcom/google/android/gms/internal/ads/zzby$zzb;",
        "Lcom/google/android/gms/internal/ads/zzby$zzb$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzell;"
    }
.end annotation


# static fields
.field private static volatile zzel:Lcom/google/android/gms/internal/ads/zzelw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzelw<",
            "Lcom/google/android/gms/internal/ads/zzby$zzb;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzez:Lcom/google/android/gms/internal/ads/zzby$zzb;


# instance fields
.field private zzdw:I

.field private zzey:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 28
    new-instance v0, Lcom/google/android/gms/internal/ads/zzby$zzb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzby$zzb;-><init>()V

    .line 29
    sput-object v0, Lcom/google/android/gms/internal/ads/zzby$zzb;->zzez:Lcom/google/android/gms/internal/ads/zzby$zzb;

    .line 30
    const-class v1, Lcom/google/android/gms/internal/ads/zzby$zzb;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzejz;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzejz;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzejz;-><init>()V

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzby$zzb;->zzey:I

    return-void
.end method

.method public static zzad()Lcom/google/android/gms/internal/ads/zzby$zzb;
    .registers 1

    .line 26
    sget-object v0, Lcom/google/android/gms/internal/ads/zzby$zzb;->zzez:Lcom/google/android/gms/internal/ads/zzby$zzb;

    return-object v0
.end method

.method static synthetic zzae()Lcom/google/android/gms/internal/ads/zzby$zzb;
    .registers 1

    .line 27
    sget-object v0, Lcom/google/android/gms/internal/ads/zzby$zzb;->zzez:Lcom/google/android/gms/internal/ads/zzby$zzb;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 6
    sget-object p2, Lcom/google/android/gms/internal/ads/zzca;->zzdv:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_5c

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzby$zzb;->zzel:Lcom/google/android/gms/internal/ads/zzelw;

    if-nez p1, :cond_2f

    .line 16
    const-class p2, Lcom/google/android/gms/internal/ads/zzby$zzb;

    monitor-enter p2

    .line 17
    :try_start_1d
    sget-object p1, Lcom/google/android/gms/internal/ads/zzby$zzb;->zzel:Lcom/google/android/gms/internal/ads/zzelw;

    if-nez p1, :cond_2a

    .line 19
    new-instance p1, Lcom/google/android/gms/internal/ads/zzejz$zza;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzby$zzb;->zzez:Lcom/google/android/gms/internal/ads/zzby$zzb;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzejz$zza;-><init>(Lcom/google/android/gms/internal/ads/zzejz;)V

    .line 20
    sput-object p1, Lcom/google/android/gms/internal/ads/zzby$zzb;->zzel:Lcom/google/android/gms/internal/ads/zzelw;

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzby$zzb;->zzez:Lcom/google/android/gms/internal/ads/zzby$zzb;

    return-object p1

    :pswitch_33
    const/4 p1, 0x3

    .line 9
    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzdw"

    aput-object v0, p1, p2

    const-string p2, "zzey"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcb;->zzw()Lcom/google/android/gms/internal/ads/zzekg;

    move-result-object p3

    aput-object p3, p1, p2

    .line 12
    sget-object p2, Lcom/google/android/gms/internal/ads/zzby$zzb;->zzez:Lcom/google/android/gms/internal/ads/zzby$zzb;

    const-string p3, "\u0001\u0001\u0000\u0001\u001b\u001b\u0001\u0000\u0000\u0000\u001b\u100c\u0000"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzby$zzb;->zza(Lcom/google/android/gms/internal/ads/zzelj;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 8
    :pswitch_4f
    new-instance p1, Lcom/google/android/gms/internal/ads/zzby$zzb$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzby$zzb$zza;-><init>(Lcom/google/android/gms/internal/ads/zzca;)V

    return-object p1

    .line 7
    :pswitch_55
    new-instance p1, Lcom/google/android/gms/internal/ads/zzby$zzb;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzby$zzb;-><init>()V

    return-object p1

    nop

    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_55
        :pswitch_4f
        :pswitch_33
        :pswitch_30
        :pswitch_16
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method

.method public final zzac()Lcom/google/android/gms/internal/ads/zzcb;
    .registers 2

    .line 4
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzby$zzb;->zzey:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcb;->zzj(I)Lcom/google/android/gms/internal/ads/zzcb;

    move-result-object v0

    if-nez v0, :cond_a

    .line 5
    sget-object v0, Lcom/google/android/gms/internal/ads/zzcb;->zzfc:Lcom/google/android/gms/internal/ads/zzcb;

    :cond_a
    return-object v0
.end method
