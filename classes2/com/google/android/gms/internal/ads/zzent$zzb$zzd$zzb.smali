.class public final Lcom/google/android/gms/internal/ads/zzent$zzb$zzd$zzb;
.super Lcom/google/android/gms/internal/ads/zzejz;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzell;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzent$zzb$zzd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzent$zzb$zzd$zzb$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzejz<",
        "Lcom/google/android/gms/internal/ads/zzent$zzb$zzd$zzb;",
        "Lcom/google/android/gms/internal/ads/zzent$zzb$zzd$zzb$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzell;"
    }
.end annotation


# static fields
.field private static volatile zzel:Lcom/google/android/gms/internal/ads/zzelw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzelw<",
            "Lcom/google/android/gms/internal/ads/zzent$zzb$zzd$zzb;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzirx:Lcom/google/android/gms/internal/ads/zzent$zzb$zzd$zzb;


# instance fields
.field private zzdw:I

.field private zziru:Lcom/google/android/gms/internal/ads/zzeip;

.field private zzirv:Lcom/google/android/gms/internal/ads/zzeip;

.field private zzirw:Lcom/google/android/gms/internal/ads/zzeip;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 26
    new-instance v0, Lcom/google/android/gms/internal/ads/zzent$zzb$zzd$zzb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzent$zzb$zzd$zzb;-><init>()V

    .line 27
    sput-object v0, Lcom/google/android/gms/internal/ads/zzent$zzb$zzd$zzb;->zzirx:Lcom/google/android/gms/internal/ads/zzent$zzb$zzd$zzb;

    .line 28
    const-class v1, Lcom/google/android/gms/internal/ads/zzent$zzb$zzd$zzb;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzejz;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzejz;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzejz;-><init>()V

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzeip;->zzier:Lcom/google/android/gms/internal/ads/zzeip;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzent$zzb$zzd$zzb;->zziru:Lcom/google/android/gms/internal/ads/zzeip;

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/ads/zzeip;->zzier:Lcom/google/android/gms/internal/ads/zzeip;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzent$zzb$zzd$zzb;->zzirv:Lcom/google/android/gms/internal/ads/zzeip;

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/ads/zzeip;->zzier:Lcom/google/android/gms/internal/ads/zzeip;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzent$zzb$zzd$zzb;->zzirw:Lcom/google/android/gms/internal/ads/zzeip;

    return-void
.end method

.method static synthetic zzbju()Lcom/google/android/gms/internal/ads/zzent$zzb$zzd$zzb;
    .registers 1

    .line 25
    sget-object v0, Lcom/google/android/gms/internal/ads/zzent$zzb$zzd$zzb;->zzirx:Lcom/google/android/gms/internal/ads/zzent$zzb$zzd$zzb;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 6
    sget-object p2, Lcom/google/android/gms/internal/ads/zzenv;->zzdv:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_5e

    .line 24
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_10
    return-object p2

    .line 22
    :pswitch_11
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 13
    :pswitch_16
    sget-object p1, Lcom/google/android/gms/internal/ads/zzent$zzb$zzd$zzb;->zzel:Lcom/google/android/gms/internal/ads/zzelw;

    if-nez p1, :cond_2f

    .line 15
    const-class p2, Lcom/google/android/gms/internal/ads/zzent$zzb$zzd$zzb;

    monitor-enter p2

    .line 16
    :try_start_1d
    sget-object p1, Lcom/google/android/gms/internal/ads/zzent$zzb$zzd$zzb;->zzel:Lcom/google/android/gms/internal/ads/zzelw;

    if-nez p1, :cond_2a

    .line 18
    new-instance p1, Lcom/google/android/gms/internal/ads/zzejz$zza;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzent$zzb$zzd$zzb;->zzirx:Lcom/google/android/gms/internal/ads/zzent$zzb$zzd$zzb;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzejz$zza;-><init>(Lcom/google/android/gms/internal/ads/zzejz;)V

    .line 19
    sput-object p1, Lcom/google/android/gms/internal/ads/zzent$zzb$zzd$zzb;->zzel:Lcom/google/android/gms/internal/ads/zzelw;

    .line 20
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

    .line 12
    :pswitch_30
    sget-object p1, Lcom/google/android/gms/internal/ads/zzent$zzb$zzd$zzb;->zzirx:Lcom/google/android/gms/internal/ads/zzent$zzb$zzd$zzb;

    return-object p1

    :pswitch_33
    const/4 p1, 0x4

    .line 9
    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzdw"

    aput-object v0, p1, p2

    const-string p2, "zziru"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzirv"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzirw"

    aput-object p3, p1, p2

    .line 11
    sget-object p2, Lcom/google/android/gms/internal/ads/zzent$zzb$zzd$zzb;->zzirx:Lcom/google/android/gms/internal/ads/zzent$zzb$zzd$zzb;

    const-string p3, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u100a\u0000\u0002\u100a\u0001\u0003\u100a\u0002"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzent$zzb$zzd$zzb;->zza(Lcom/google/android/gms/internal/ads/zzelj;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 8
    :pswitch_52
    new-instance p1, Lcom/google/android/gms/internal/ads/zzent$zzb$zzd$zzb$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzent$zzb$zzd$zzb$zza;-><init>(Lcom/google/android/gms/internal/ads/zzenv;)V

    return-object p1

    .line 7
    :pswitch_58
    new-instance p1, Lcom/google/android/gms/internal/ads/zzent$zzb$zzd$zzb;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzent$zzb$zzd$zzb;-><init>()V

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
