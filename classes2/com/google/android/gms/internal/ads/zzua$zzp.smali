.class public final Lcom/google/android/gms/internal/ads/zzua$zzp;
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
    name = "zzp"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzua$zzp$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzejz<",
        "Lcom/google/android/gms/internal/ads/zzua$zzp;",
        "Lcom/google/android/gms/internal/ads/zzua$zzp$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzell;"
    }
.end annotation


# static fields
.field private static final zzcer:Lcom/google/android/gms/internal/ads/zzua$zzp;

.field private static volatile zzel:Lcom/google/android/gms/internal/ads/zzelw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzelw<",
            "Lcom/google/android/gms/internal/ads/zzua$zzp;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzceg:I

.field private zzceh:I

.field private zzcei:I

.field private zzcej:I

.field private zzcek:I

.field private zzcel:I

.field private zzcem:I

.field private zzcen:I

.field private zzceo:I

.field private zzcep:I

.field private zzceq:Lcom/google/android/gms/internal/ads/zzua$zzq;

.field private zzdw:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 27
    new-instance v0, Lcom/google/android/gms/internal/ads/zzua$zzp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzua$zzp;-><init>()V

    .line 28
    sput-object v0, Lcom/google/android/gms/internal/ads/zzua$zzp;->zzcer:Lcom/google/android/gms/internal/ads/zzua$zzp;

    .line 29
    const-class v1, Lcom/google/android/gms/internal/ads/zzua$zzp;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzejz;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzejz;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzejz;-><init>()V

    const/16 v0, 0x3e8

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzua$zzp;->zzceg:I

    .line 3
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzua$zzp;->zzceh:I

    return-void
.end method

.method static synthetic zzoo()Lcom/google/android/gms/internal/ads/zzua$zzp;
    .registers 1

    .line 26
    sget-object v0, Lcom/google/android/gms/internal/ads/zzua$zzp;->zzcer:Lcom/google/android/gms/internal/ads/zzua$zzp;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 5
    sget-object p2, Lcom/google/android/gms/internal/ads/zzuc;->zzdv:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_9c

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzua$zzp;->zzel:Lcom/google/android/gms/internal/ads/zzelw;

    if-nez p1, :cond_2f

    .line 16
    const-class p2, Lcom/google/android/gms/internal/ads/zzua$zzp;

    monitor-enter p2

    .line 17
    :try_start_1d
    sget-object p1, Lcom/google/android/gms/internal/ads/zzua$zzp;->zzel:Lcom/google/android/gms/internal/ads/zzelw;

    if-nez p1, :cond_2a

    .line 19
    new-instance p1, Lcom/google/android/gms/internal/ads/zzejz$zza;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzua$zzp;->zzcer:Lcom/google/android/gms/internal/ads/zzua$zzp;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzejz$zza;-><init>(Lcom/google/android/gms/internal/ads/zzejz;)V

    .line 20
    sput-object p1, Lcom/google/android/gms/internal/ads/zzua$zzp;->zzel:Lcom/google/android/gms/internal/ads/zzelw;

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzua$zzp;->zzcer:Lcom/google/android/gms/internal/ads/zzua$zzp;

    return-object p1

    :pswitch_33
    const/16 p1, 0xe

    .line 8
    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzdw"

    aput-object v0, p1, p2

    const-string p2, "zzceg"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuk;->zzw()Lcom/google/android/gms/internal/ads/zzekg;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzceh"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuk;->zzw()Lcom/google/android/gms/internal/ads/zzekg;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzcei"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "zzcej"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "zzcek"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "zzcel"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string p3, "zzcem"

    aput-object p3, p1, p2

    const/16 p2, 0xa

    const-string p3, "zzcen"

    aput-object p3, p1, p2

    const/16 p2, 0xb

    const-string p3, "zzceo"

    aput-object p3, p1, p2

    const/16 p2, 0xc

    const-string p3, "zzcep"

    aput-object p3, p1, p2

    const/16 p2, 0xd

    const-string p3, "zzceq"

    aput-object p3, p1, p2

    .line 12
    sget-object p2, Lcom/google/android/gms/internal/ads/zzua$zzp;->zzcer:Lcom/google/android/gms/internal/ads/zzua$zzp;

    const-string p3, "\u0001\u000b\u0000\u0001\u0001\u000b\u000b\u0000\u0000\u0000\u0001\u100c\u0000\u0002\u100c\u0001\u0003\u1004\u0002\u0004\u1004\u0003\u0005\u1004\u0004\u0006\u1004\u0005\u0007\u1004\u0006\u0008\u1004\u0007\t\u1004\u0008\n\u1004\t\u000b\u1009\n"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzua$zzp;->zza(Lcom/google/android/gms/internal/ads/zzelj;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 7
    :pswitch_8f
    new-instance p1, Lcom/google/android/gms/internal/ads/zzua$zzp$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzua$zzp$zza;-><init>(Lcom/google/android/gms/internal/ads/zzuc;)V

    return-object p1

    .line 6
    :pswitch_95
    new-instance p1, Lcom/google/android/gms/internal/ads/zzua$zzp;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzua$zzp;-><init>()V

    return-object p1

    nop

    :pswitch_data_9c
    .packed-switch 0x1
        :pswitch_95
        :pswitch_8f
        :pswitch_33
        :pswitch_30
        :pswitch_16
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method
