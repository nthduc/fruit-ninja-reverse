.class public final Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;
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
    name = "zzh"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/firebase_auth/zzp$zzh$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase_auth/zzif<",
        "Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;",
        "Lcom/google/android/gms/internal/firebase_auth/zzp$zzh$zza;",
        ">;",
        "Lcom/google/android/gms/internal/firebase_auth/zzjp;"
    }
.end annotation


# static fields
.field private static final zzu:Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;

.field private static volatile zzv:Lcom/google/android/gms/internal/firebase_auth/zzjx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase_auth/zzjx<",
            "Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:I

.field private zzd:I

.field private zze:Ljava/lang/String;

.field private zzf:Ljava/lang/String;

.field private zzg:Ljava/lang/String;

.field private zzh:Ljava/lang/String;

.field private zzi:Ljava/lang/String;

.field private zzj:Ljava/lang/String;

.field private zzk:Ljava/lang/String;

.field private zzl:Ljava/lang/String;

.field private zzm:Ljava/lang/String;

.field private zzn:Ljava/lang/String;

.field private zzo:Z

.field private zzp:Ljava/lang/String;

.field private zzq:Z

.field private zzr:Ljava/lang/String;

.field private zzs:Ljava/lang/String;

.field private zzt:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 100
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;-><init>()V

    .line 101
    sput-object v0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;->zzu:Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;

    .line 102
    const-class v1, Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/firebase_auth/zzif;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/firebase_auth/zzif;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_auth/zzif;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;->zze:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;->zzf:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;->zzg:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;->zzh:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;->zzi:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;->zzj:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;->zzk:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;->zzl:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;->zzm:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;->zzn:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;->zzp:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;->zzr:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;->zzs:Ljava/lang/String;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/firebase_auth/zzp$zzh$zza;
    .registers 1

    .line 65
    sget-object v0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;->zzu:Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_auth/zzif;->zzz()Lcom/google/android/gms/internal/firebase_auth/zzif$zza;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzh$zza;

    return-object v0
.end method

.method private final zza(Lcom/google/android/gms/internal/firebase_auth/zzgj;)V
    .registers 2

    .line 16
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzgj;->zza()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;->zzd:I

    .line 17
    iget p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;->zzc:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;->zzc:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;Lcom/google/android/gms/internal/firebase_auth/zzgj;)V
    .registers 2

    .line 87
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;->zza(Lcom/google/android/gms/internal/firebase_auth/zzgj;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;Ljava/lang/String;)V
    .registers 2

    .line 88
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;->zza(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;Z)V
    .registers 2

    .line 95
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;->zza(Z)V

    return-void
.end method

.method private final zza(Ljava/lang/String;)V
    .registers 3

    .line 19
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    iget v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;->zzc:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;->zzc:I

    .line 21
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;->zze:Ljava/lang/String;

    return-void
.end method

.method private final zza(Z)V
    .registers 3

    .line 47
    iget v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;->zzc:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;->zzc:I

    .line 48
    iput-boolean p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;->zzo:Z

    return-void
.end method

.method static synthetic zzb()Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;
    .registers 1

    .line 86
    sget-object v0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;->zzu:Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;Ljava/lang/String;)V
    .registers 2

    .line 89
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;->zzb(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;Z)V
    .registers 2

    .line 97
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;->zzb(Z)V

    return-void
.end method

.method private final zzb(Ljava/lang/String;)V
    .registers 3

    .line 23
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    iget v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;->zzc:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;->zzc:I

    .line 25
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;->zzi:Ljava/lang/String;

    return-void
.end method

.method private final zzb(Z)V
    .registers 3

    .line 54
    iget v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;->zzc:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;->zzc:I

    .line 55
    iput-boolean p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;->zzq:Z

    return-void
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;Ljava/lang/String;)V
    .registers 2

    .line 90
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;->zzc(Ljava/lang/String;)V

    return-void
.end method

.method private final zzc(Ljava/lang/String;)V
    .registers 3

    .line 27
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    iget v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;->zzc:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;->zzc:I

    .line 29
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;->zzj:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;Ljava/lang/String;)V
    .registers 2

    .line 91
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;->zzd(Ljava/lang/String;)V

    return-void
.end method

.method private final zzd(Ljava/lang/String;)V
    .registers 3

    .line 31
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    iget v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;->zzc:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;->zzc:I

    .line 33
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;->zzk:Ljava/lang/String;

    return-void
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;Ljava/lang/String;)V
    .registers 2

    .line 92
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;->zze(Ljava/lang/String;)V

    return-void
.end method

.method private final zze(Ljava/lang/String;)V
    .registers 3

    .line 35
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    iget v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;->zzc:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;->zzc:I

    .line 37
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;->zzl:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;Ljava/lang/String;)V
    .registers 2

    .line 93
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;->zzf(Ljava/lang/String;)V

    return-void
.end method

.method private final zzf(Ljava/lang/String;)V
    .registers 3

    .line 39
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    iget v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;->zzc:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;->zzc:I

    .line 41
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;->zzm:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;Ljava/lang/String;)V
    .registers 2

    .line 94
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;->zzg(Ljava/lang/String;)V

    return-void
.end method

.method private final zzg(Ljava/lang/String;)V
    .registers 3

    .line 43
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    iget v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;->zzc:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;->zzc:I

    .line 45
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;->zzn:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzh(Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;Ljava/lang/String;)V
    .registers 2

    .line 96
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;->zzh(Ljava/lang/String;)V

    return-void
.end method

.method private final zzh(Ljava/lang/String;)V
    .registers 3

    .line 50
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    iget v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;->zzc:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;->zzc:I

    .line 52
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;->zzp:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzi(Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;Ljava/lang/String;)V
    .registers 2

    .line 98
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;->zzi(Ljava/lang/String;)V

    return-void
.end method

.method private final zzi(Ljava/lang/String;)V
    .registers 3

    .line 57
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    iget v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;->zzc:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;->zzc:I

    .line 59
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;->zzr:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzj(Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;Ljava/lang/String;)V
    .registers 2

    .line 99
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;->zzj(Ljava/lang/String;)V

    return-void
.end method

.method private final zzj(Ljava/lang/String;)V
    .registers 4

    .line 61
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    iget v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;->zzc:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;->zzc:I

    .line 63
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;->zzs:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 66
    sget-object p2, Lcom/google/android/gms/internal/firebase_auth/zzo;->zza:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_b8

    .line 85
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_10
    return-object p2

    .line 83
    :pswitch_11
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 74
    :pswitch_16
    sget-object p1, Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;->zzv:Lcom/google/android/gms/internal/firebase_auth/zzjx;

    if-nez p1, :cond_2f

    .line 76
    const-class p2, Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;

    monitor-enter p2

    .line 77
    :try_start_1d
    sget-object p1, Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;->zzv:Lcom/google/android/gms/internal/firebase_auth/zzjx;

    if-nez p1, :cond_2a

    .line 79
    new-instance p1, Lcom/google/android/gms/internal/firebase_auth/zzif$zzc;

    sget-object p3, Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;->zzu:Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/firebase_auth/zzif$zzc;-><init>(Lcom/google/android/gms/internal/firebase_auth/zzif;)V

    .line 80
    sput-object p1, Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;->zzv:Lcom/google/android/gms/internal/firebase_auth/zzjx;

    .line 81
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

    .line 73
    :pswitch_30
    sget-object p1, Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;->zzu:Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;

    return-object p1

    :pswitch_33
    const/16 p1, 0x13

    .line 69
    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzc"

    aput-object v0, p1, p2

    const-string p2, "zzd"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    .line 70
    invoke-static {}, Lcom/google/android/gms/internal/firebase_auth/zzgj;->zzb()Lcom/google/android/gms/internal/firebase_auth/zzij;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zze"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzf"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzg"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "zzh"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "zzi"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "zzj"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string p3, "zzk"

    aput-object p3, p1, p2

    const/16 p2, 0xa

    const-string p3, "zzl"

    aput-object p3, p1, p2

    const/16 p2, 0xb

    const-string p3, "zzm"

    aput-object p3, p1, p2

    const/16 p2, 0xc

    const-string p3, "zzn"

    aput-object p3, p1, p2

    const/16 p2, 0xd

    const-string p3, "zzo"

    aput-object p3, p1, p2

    const/16 p2, 0xe

    const-string p3, "zzp"

    aput-object p3, p1, p2

    const/16 p2, 0xf

    const-string p3, "zzq"

    aput-object p3, p1, p2

    const/16 p2, 0x10

    const-string p3, "zzr"

    aput-object p3, p1, p2

    const/16 p2, 0x11

    const-string p3, "zzs"

    aput-object p3, p1, p2

    const/16 p2, 0x12

    const-string p3, "zzt"

    aput-object p3, p1, p2

    .line 72
    sget-object p2, Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;->zzu:Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;

    const-string p3, "\u0001\u0011\u0000\u0001\u0001\u0013\u0011\u0000\u0000\u0000\u0001\u100c\u0000\u0002\u1008\u0001\u0003\u1008\u0002\u0004\u1008\u0003\u0005\u1008\u0004\u0006\u1008\u0005\u0007\u1008\u0006\u0008\u1008\u0007\t\u1008\u0008\n\u1008\t\u000b\u1008\n\u000c\u1007\u000b\r\u1008\u000c\u000e\u1007\r\u000f\u1008\u000e\u0012\u1008\u000f\u0013\u1007\u0010"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;->zza(Lcom/google/android/gms/internal/firebase_auth/zzjn;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 68
    :pswitch_ab
    new-instance p1, Lcom/google/android/gms/internal/firebase_auth/zzp$zzh$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzh$zza;-><init>(Lcom/google/android/gms/internal/firebase_auth/zzo;)V

    return-object p1

    .line 67
    :pswitch_b1
    new-instance p1, Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;

    invoke-direct {p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzh;-><init>()V

    return-object p1

    nop

    :pswitch_data_b8
    .packed-switch 0x1
        :pswitch_b1
        :pswitch_ab
        :pswitch_33
        :pswitch_30
        :pswitch_16
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method
