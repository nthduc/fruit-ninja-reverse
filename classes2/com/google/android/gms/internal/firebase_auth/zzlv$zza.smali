.class public final Lcom/google/android/gms/internal/firebase_auth/zzlv$zza;
.super Lcom/google/android/gms/internal/firebase_auth/zzif;
.source "com.google.firebase:firebase-auth@@19.3.1"

# interfaces
.implements Lcom/google/android/gms/internal/firebase_auth/zzjp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/firebase_auth/zzlv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/firebase_auth/zzlv$zza$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase_auth/zzif<",
        "Lcom/google/android/gms/internal/firebase_auth/zzlv$zza;",
        "Lcom/google/android/gms/internal/firebase_auth/zzlv$zza$zza;",
        ">;",
        "Lcom/google/android/gms/internal/firebase_auth/zzjp;"
    }
.end annotation


# static fields
.field private static final zzl:Lcom/google/android/gms/internal/firebase_auth/zzlv$zza;

.field private static volatile zzm:Lcom/google/android/gms/internal/firebase_auth/zzjx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase_auth/zzjx<",
            "Lcom/google/android/gms/internal/firebase_auth/zzlv$zza;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:Ljava/lang/String;

.field private zzd:Ljava/lang/String;

.field private zze:Ljava/lang/String;

.field private zzf:Ljava/lang/String;

.field private zzg:Lcom/google/android/gms/internal/firebase_auth/zzio;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase_auth/zzio<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzh:Ljava/lang/String;

.field private zzi:Ljava/lang/String;

.field private zzj:Ljava/lang/String;

.field private zzk:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 41
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzlv$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_auth/zzlv$zza;-><init>()V

    .line 42
    sput-object v0, Lcom/google/android/gms/internal/firebase_auth/zzlv$zza;->zzl:Lcom/google/android/gms/internal/firebase_auth/zzlv$zza;

    .line 43
    const-class v1, Lcom/google/android/gms/internal/firebase_auth/zzlv$zza;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/firebase_auth/zzif;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/firebase_auth/zzif;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_auth/zzif;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzlv$zza;->zzc:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzlv$zza;->zzd:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzlv$zza;->zze:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzlv$zza;->zzf:Ljava/lang/String;

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/firebase_auth/zzif;->zzac()Lcom/google/android/gms/internal/firebase_auth/zzio;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzlv$zza;->zzg:Lcom/google/android/gms/internal/firebase_auth/zzio;

    .line 7
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzlv$zza;->zzh:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzlv$zza;->zzi:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzlv$zza;->zzj:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzlv$zza;->zzk:Ljava/lang/String;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/firebase_auth/zzlv$zza$zza;
    .registers 1

    .line 18
    sget-object v0, Lcom/google/android/gms/internal/firebase_auth/zzlv$zza;->zzl:Lcom/google/android/gms/internal/firebase_auth/zzlv$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_auth/zzif;->zzz()Lcom/google/android/gms/internal/firebase_auth/zzif$zza;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase_auth/zzlv$zza$zza;

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/firebase_auth/zzlv$zza;Ljava/lang/String;)V
    .registers 2

    .line 39
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzlv$zza;->zza(Ljava/lang/String;)V

    return-void
.end method

.method private final zza(Ljava/lang/String;)V
    .registers 2

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzlv$zza;->zzc:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzb()Lcom/google/android/gms/internal/firebase_auth/zzlv$zza;
    .registers 1

    .line 38
    sget-object v0, Lcom/google/android/gms/internal/firebase_auth/zzlv$zza;->zzl:Lcom/google/android/gms/internal/firebase_auth/zzlv$zza;

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/firebase_auth/zzlv$zza;Ljava/lang/String;)V
    .registers 2

    .line 40
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzlv$zza;->zzb(Ljava/lang/String;)V

    return-void
.end method

.method private final zzb(Ljava/lang/String;)V
    .registers 2

    .line 15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzlv$zza;->zze:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 19
    sget-object p2, Lcom/google/android/gms/internal/firebase_auth/zzlu;->zza:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_7a

    .line 37
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_10
    return-object p2

    .line 35
    :pswitch_11
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 26
    :pswitch_16
    sget-object p1, Lcom/google/android/gms/internal/firebase_auth/zzlv$zza;->zzm:Lcom/google/android/gms/internal/firebase_auth/zzjx;

    if-nez p1, :cond_2f

    .line 28
    const-class p2, Lcom/google/android/gms/internal/firebase_auth/zzlv$zza;

    monitor-enter p2

    .line 29
    :try_start_1d
    sget-object p1, Lcom/google/android/gms/internal/firebase_auth/zzlv$zza;->zzm:Lcom/google/android/gms/internal/firebase_auth/zzjx;

    if-nez p1, :cond_2a

    .line 31
    new-instance p1, Lcom/google/android/gms/internal/firebase_auth/zzif$zzc;

    sget-object p3, Lcom/google/android/gms/internal/firebase_auth/zzlv$zza;->zzl:Lcom/google/android/gms/internal/firebase_auth/zzlv$zza;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/firebase_auth/zzif$zzc;-><init>(Lcom/google/android/gms/internal/firebase_auth/zzif;)V

    .line 32
    sput-object p1, Lcom/google/android/gms/internal/firebase_auth/zzlv$zza;->zzm:Lcom/google/android/gms/internal/firebase_auth/zzjx;

    .line 33
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

    .line 25
    :pswitch_30
    sget-object p1, Lcom/google/android/gms/internal/firebase_auth/zzlv$zza;->zzl:Lcom/google/android/gms/internal/firebase_auth/zzlv$zza;

    return-object p1

    :pswitch_33
    const/16 p1, 0x9

    .line 22
    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzc"

    aput-object v0, p1, p2

    const-string p2, "zzd"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zze"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzf"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzg"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzh"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "zzi"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "zzj"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "zzk"

    aput-object p3, p1, p2

    .line 24
    sget-object p2, Lcom/google/android/gms/internal/firebase_auth/zzlv$zza;->zzl:Lcom/google/android/gms/internal/firebase_auth/zzlv$zza;

    const-string p3, "\u0000\t\u0000\u0000\u0001\u000b\t\u0000\u0001\u0000\u0001\u0208\u0002\u0208\u0003\u0208\u0006\u0208\u0007\u021a\u0008\u0208\t\u0208\n\u0208\u000b\u0208"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/firebase_auth/zzlv$zza;->zza(Lcom/google/android/gms/internal/firebase_auth/zzjn;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 21
    :pswitch_6d
    new-instance p1, Lcom/google/android/gms/internal/firebase_auth/zzlv$zza$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/firebase_auth/zzlv$zza$zza;-><init>(Lcom/google/android/gms/internal/firebase_auth/zzlu;)V

    return-object p1

    .line 20
    :pswitch_73
    new-instance p1, Lcom/google/android/gms/internal/firebase_auth/zzlv$zza;

    invoke-direct {p1}, Lcom/google/android/gms/internal/firebase_auth/zzlv$zza;-><init>()V

    return-object p1

    nop

    :pswitch_data_7a
    .packed-switch 0x1
        :pswitch_73
        :pswitch_6d
        :pswitch_33
        :pswitch_30
        :pswitch_16
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method
