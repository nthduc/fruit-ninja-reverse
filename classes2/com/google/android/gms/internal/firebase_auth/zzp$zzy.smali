.class public final Lcom/google/android/gms/internal/firebase_auth/zzp$zzy;
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
    name = "zzy"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/firebase_auth/zzp$zzy$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase_auth/zzif<",
        "Lcom/google/android/gms/internal/firebase_auth/zzp$zzy;",
        "Lcom/google/android/gms/internal/firebase_auth/zzp$zzy$zza;",
        ">;",
        "Lcom/google/android/gms/internal/firebase_auth/zzjp;"
    }
.end annotation


# static fields
.field private static final zzn:Lcom/google/android/gms/internal/firebase_auth/zzp$zzy;

.field private static volatile zzo:Lcom/google/android/gms/internal/firebase_auth/zzjx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase_auth/zzjx<",
            "Lcom/google/android/gms/internal/firebase_auth/zzp$zzy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:I

.field private zzd:Ljava/lang/String;

.field private zze:Ljava/lang/String;

.field private zzf:J

.field private zzg:Ljava/lang/String;

.field private zzh:Z

.field private zzi:Ljava/lang/String;

.field private zzj:Ljava/lang/String;

.field private zzk:J

.field private zzl:Ljava/lang/String;

.field private zzm:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzy;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzy;->zzn:Lcom/google/android/gms/internal/firebase_auth/zzp$zzy;

    const-class v1, Lcom/google/android/gms/internal/firebase_auth/zzp$zzy;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/firebase_auth/zzif;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/firebase_auth/zzif;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_auth/zzif;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzy;->zzd:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzy;->zze:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzy;->zzg:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzy;->zzi:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzy;->zzj:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzy;->zzl:Ljava/lang/String;

    return-void
.end method

.method public static zzj()Lcom/google/android/gms/internal/firebase_auth/zzjx;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/firebase_auth/zzjx<",
            "Lcom/google/android/gms/internal/firebase_auth/zzp$zzy;",
            ">;"
        }
    .end annotation

    .line 12
    sget-object v0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzy;->zzn:Lcom/google/android/gms/internal/firebase_auth/zzp$zzy;

    .line 13
    sget v1, Lcom/google/android/gms/internal/firebase_auth/zzif$zzf;->zzg:I

    const/4 v2, 0x0

    .line 14
    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/firebase_auth/zzif;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 15
    check-cast v0, Lcom/google/android/gms/internal/firebase_auth/zzjx;

    return-object v0
.end method

.method static synthetic zzk()Lcom/google/android/gms/internal/firebase_auth/zzp$zzy;
    .registers 1

    .line 17
    sget-object v0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzy;->zzn:Lcom/google/android/gms/internal/firebase_auth/zzp$zzy;

    return-object v0
.end method


# virtual methods
.method public final g_()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzy;->zzk:J

    return-wide v0
.end method

.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    sget-object p2, Lcom/google/android/gms/internal/firebase_auth/zzo;->zza:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_86

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_10
    return-object p2

    :pswitch_11
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_16
    sget-object p1, Lcom/google/android/gms/internal/firebase_auth/zzp$zzy;->zzo:Lcom/google/android/gms/internal/firebase_auth/zzjx;

    if-nez p1, :cond_2f

    const-class p2, Lcom/google/android/gms/internal/firebase_auth/zzp$zzy;

    monitor-enter p2

    :try_start_1d
    sget-object p1, Lcom/google/android/gms/internal/firebase_auth/zzp$zzy;->zzo:Lcom/google/android/gms/internal/firebase_auth/zzjx;

    if-nez p1, :cond_2a

    new-instance p1, Lcom/google/android/gms/internal/firebase_auth/zzif$zzc;

    sget-object p3, Lcom/google/android/gms/internal/firebase_auth/zzp$zzy;->zzn:Lcom/google/android/gms/internal/firebase_auth/zzp$zzy;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/firebase_auth/zzif$zzc;-><init>(Lcom/google/android/gms/internal/firebase_auth/zzif;)V

    sput-object p1, Lcom/google/android/gms/internal/firebase_auth/zzp$zzy;->zzo:Lcom/google/android/gms/internal/firebase_auth/zzjx;

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

    :pswitch_30
    sget-object p1, Lcom/google/android/gms/internal/firebase_auth/zzp$zzy;->zzn:Lcom/google/android/gms/internal/firebase_auth/zzp$zzy;

    return-object p1

    :pswitch_33
    const/16 p1, 0xb

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

    sget-object p2, Lcom/google/android/gms/internal/firebase_auth/zzp$zzy;->zzn:Lcom/google/android/gms/internal/firebase_auth/zzp$zzy;

    const-string p3, "\u0001\n\u0000\u0001\u0001\n\n\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u1008\u0001\u0003\u1002\u0002\u0004\u1008\u0003\u0005\u1007\u0004\u0006\u1008\u0005\u0007\u1008\u0006\u0008\u1002\u0007\t\u1008\u0008\n\u1002\t"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzy;->zza(Lcom/google/android/gms/internal/firebase_auth/zzjn;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_79
    new-instance p1, Lcom/google/android/gms/internal/firebase_auth/zzp$zzy$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzy$zza;-><init>(Lcom/google/android/gms/internal/firebase_auth/zzo;)V

    return-object p1

    :pswitch_7f
    new-instance p1, Lcom/google/android/gms/internal/firebase_auth/zzp$zzy;

    invoke-direct {p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzy;-><init>()V

    return-object p1

    nop

    :pswitch_data_86
    .packed-switch 0x1
        :pswitch_7f
        :pswitch_79
        :pswitch_33
        :pswitch_30
        :pswitch_16
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method

.method public final zza()Ljava/lang/String;
    .registers 2

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzy;->zzd:Ljava/lang/String;

    return-object v0
.end method

.method public final zzb()Ljava/lang/String;
    .registers 2

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzy;->zze:Ljava/lang/String;

    return-object v0
.end method

.method public final zzc()J
    .registers 3

    .line 11
    iget-wide v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzy;->zzf:J

    return-wide v0
.end method

.method public final zzd()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzy;->zzg:Ljava/lang/String;

    return-object v0
.end method

.method public final zze()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzy;->zzh:Z

    return v0
.end method

.method public final zzf()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzy;->zzi:Ljava/lang/String;

    return-object v0
.end method

.method public final zzg()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzy;->zzj:Ljava/lang/String;

    return-object v0
.end method

.method public final zzi()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzy;->zzl:Ljava/lang/String;

    return-object v0
.end method
