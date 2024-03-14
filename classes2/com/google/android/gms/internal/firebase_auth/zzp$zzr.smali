.class public final Lcom/google/android/gms/internal/firebase_auth/zzp$zzr;
.super Lcom/google/android/gms/internal/firebase_auth/zzif;
.source "com.google.firebase:firebase-auth@@19.3.1"

# interfaces
.implements Lcom/google/android/gms/internal/firebase_auth/zzjp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/firebase_auth/zzp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzr"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/firebase_auth/zzp$zzr$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase_auth/zzif<",
        "Lcom/google/android/gms/internal/firebase_auth/zzp$zzr;",
        "Lcom/google/android/gms/internal/firebase_auth/zzp$zzr$zza;",
        ">;",
        "Lcom/google/android/gms/internal/firebase_auth/zzjp;"
    }
.end annotation


# static fields
.field private static final zzq:Lcom/google/android/gms/internal/firebase_auth/zzp$zzr;

.field private static volatile zzr:Lcom/google/android/gms/internal/firebase_auth/zzjx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase_auth/zzjx<",
            "Lcom/google/android/gms/internal/firebase_auth/zzp$zzr;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:I

.field private zzd:Ljava/lang/String;

.field private zze:Ljava/lang/String;

.field private zzf:Ljava/lang/String;

.field private zzg:Z

.field private zzh:Ljava/lang/String;

.field private zzi:Ljava/lang/String;

.field private zzj:J

.field private zzk:Ljava/lang/String;

.field private zzl:Z

.field private zzm:Z

.field private zzn:Z

.field private zzo:Ljava/lang/String;

.field private zzp:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 75
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzr;-><init>()V

    .line 76
    sput-object v0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzr;->zzq:Lcom/google/android/gms/internal/firebase_auth/zzp$zzr;

    .line 77
    const-class v1, Lcom/google/android/gms/internal/firebase_auth/zzp$zzr;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/firebase_auth/zzif;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/firebase_auth/zzif;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_auth/zzif;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzr;->zzd:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzr;->zze:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzr;->zzf:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzr;->zzh:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzr;->zzi:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzr;->zzk:Ljava/lang/String;

    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzr;->zzn:Z

    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzr;->zzo:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzr;->zzp:Ljava/lang/String;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/firebase_auth/zzp$zzr$zza;
    .registers 1

    .line 45
    sget-object v0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzr;->zzq:Lcom/google/android/gms/internal/firebase_auth/zzp$zzr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_auth/zzif;->zzz()Lcom/google/android/gms/internal/firebase_auth/zzif$zza;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzr$zza;

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/firebase_auth/zzp$zzr;Ljava/lang/String;)V
    .registers 2

    .line 66
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzr;->zza(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/firebase_auth/zzp$zzr;Z)V
    .registers 2

    .line 70
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzr;->zza(Z)V

    return-void
.end method

.method private final zza(Ljava/lang/String;)V
    .registers 3

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    iget v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzr;->zzc:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzr;->zzc:I

    .line 14
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzr;->zzd:Ljava/lang/String;

    return-void
.end method

.method private final zza(Z)V
    .registers 3

    .line 28
    iget v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzr;->zzc:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzr;->zzc:I

    .line 29
    iput-boolean p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzr;->zzl:Z

    return-void
.end method

.method static synthetic zzb()Lcom/google/android/gms/internal/firebase_auth/zzp$zzr;
    .registers 1

    .line 65
    sget-object v0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzr;->zzq:Lcom/google/android/gms/internal/firebase_auth/zzp$zzr;

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/firebase_auth/zzp$zzr;Ljava/lang/String;)V
    .registers 2

    .line 67
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzr;->zzb(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/firebase_auth/zzp$zzr;Z)V
    .registers 2

    .line 71
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzr;->zzb(Z)V

    return-void
.end method

.method private final zzb(Ljava/lang/String;)V
    .registers 3

    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    iget v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzr;->zzc:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzr;->zzc:I

    .line 18
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzr;->zze:Ljava/lang/String;

    return-void
.end method

.method private final zzb(Z)V
    .registers 3

    .line 31
    iget v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzr;->zzc:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzr;->zzc:I

    .line 32
    iput-boolean p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzr;->zzm:Z

    return-void
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/firebase_auth/zzp$zzr;Ljava/lang/String;)V
    .registers 2

    .line 68
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzr;->zzc(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/firebase_auth/zzp$zzr;Z)V
    .registers 2

    .line 72
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzr;->zzc(Z)V

    return-void
.end method

.method private final zzc(Ljava/lang/String;)V
    .registers 3

    .line 20
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    iget v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzr;->zzc:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzr;->zzc:I

    .line 22
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzr;->zzh:Ljava/lang/String;

    return-void
.end method

.method private final zzc(Z)V
    .registers 3

    .line 34
    iget v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzr;->zzc:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzr;->zzc:I

    .line 35
    iput-boolean p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzr;->zzn:Z

    return-void
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/firebase_auth/zzp$zzr;Ljava/lang/String;)V
    .registers 2

    .line 69
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzr;->zzd(Ljava/lang/String;)V

    return-void
.end method

.method private final zzd(Ljava/lang/String;)V
    .registers 3

    .line 24
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    iget v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzr;->zzc:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzr;->zzc:I

    .line 26
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzr;->zzk:Ljava/lang/String;

    return-void
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/firebase_auth/zzp$zzr;Ljava/lang/String;)V
    .registers 2

    .line 73
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzr;->zze(Ljava/lang/String;)V

    return-void
.end method

.method private final zze(Ljava/lang/String;)V
    .registers 3

    .line 37
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    iget v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzr;->zzc:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzr;->zzc:I

    .line 39
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzr;->zzo:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/firebase_auth/zzp$zzr;Ljava/lang/String;)V
    .registers 2

    .line 74
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzr;->zzf(Ljava/lang/String;)V

    return-void
.end method

.method private final zzf(Ljava/lang/String;)V
    .registers 3

    .line 41
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    iget v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzr;->zzc:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzr;->zzc:I

    .line 43
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzr;->zzp:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 46
    sget-object p2, Lcom/google/android/gms/internal/firebase_auth/zzo;->zza:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_98

    .line 64
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_10
    return-object p2

    .line 62
    :pswitch_11
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 53
    :pswitch_16
    sget-object p1, Lcom/google/android/gms/internal/firebase_auth/zzp$zzr;->zzr:Lcom/google/android/gms/internal/firebase_auth/zzjx;

    if-nez p1, :cond_2f

    .line 55
    const-class p2, Lcom/google/android/gms/internal/firebase_auth/zzp$zzr;

    monitor-enter p2

    .line 56
    :try_start_1d
    sget-object p1, Lcom/google/android/gms/internal/firebase_auth/zzp$zzr;->zzr:Lcom/google/android/gms/internal/firebase_auth/zzjx;

    if-nez p1, :cond_2a

    .line 58
    new-instance p1, Lcom/google/android/gms/internal/firebase_auth/zzif$zzc;

    sget-object p3, Lcom/google/android/gms/internal/firebase_auth/zzp$zzr;->zzq:Lcom/google/android/gms/internal/firebase_auth/zzp$zzr;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/firebase_auth/zzif$zzc;-><init>(Lcom/google/android/gms/internal/firebase_auth/zzif;)V

    .line 59
    sput-object p1, Lcom/google/android/gms/internal/firebase_auth/zzp$zzr;->zzr:Lcom/google/android/gms/internal/firebase_auth/zzjx;

    .line 60
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

    .line 52
    :pswitch_30
    sget-object p1, Lcom/google/android/gms/internal/firebase_auth/zzp$zzr;->zzq:Lcom/google/android/gms/internal/firebase_auth/zzp$zzr;

    return-object p1

    :pswitch_33
    const/16 p1, 0xe

    .line 49
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

    const/16 p2, 0x9

    const-string p3, "zzl"

    aput-object p3, p1, p2

    const/16 p2, 0xa

    const-string p3, "zzm"

    aput-object p3, p1, p2

    const/16 p2, 0xb

    const-string p3, "zzn"

    aput-object p3, p1, p2

    const/16 p2, 0xc

    const-string p3, "zzo"

    aput-object p3, p1, p2

    const/16 p2, 0xd

    const-string p3, "zzp"

    aput-object p3, p1, p2

    .line 51
    sget-object p2, Lcom/google/android/gms/internal/firebase_auth/zzp$zzr;->zzq:Lcom/google/android/gms/internal/firebase_auth/zzp$zzr;

    const-string p3, "\u0001\r\u0000\u0001\u0001\u000f\r\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u1008\u0001\u0003\u1008\u0002\u0004\u1007\u0003\u0005\u1008\u0004\u0006\u1008\u0005\u0007\u1002\u0006\u0008\u1008\u0007\t\u1007\u0008\n\u1007\t\u000b\u1007\n\r\u1008\u000b\u000f\u1008\u000c"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzr;->zza(Lcom/google/android/gms/internal/firebase_auth/zzjn;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 48
    :pswitch_8b
    new-instance p1, Lcom/google/android/gms/internal/firebase_auth/zzp$zzr$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzr$zza;-><init>(Lcom/google/android/gms/internal/firebase_auth/zzo;)V

    return-object p1

    .line 47
    :pswitch_91
    new-instance p1, Lcom/google/android/gms/internal/firebase_auth/zzp$zzr;

    invoke-direct {p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzr;-><init>()V

    return-object p1

    nop

    :pswitch_data_98
    .packed-switch 0x1
        :pswitch_91
        :pswitch_8b
        :pswitch_33
        :pswitch_30
        :pswitch_16
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method
