.class public final Lcom/google/android/gms/internal/firebase_auth/zzp$zzk;
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
    name = "zzk"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/firebase_auth/zzp$zzk$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase_auth/zzif<",
        "Lcom/google/android/gms/internal/firebase_auth/zzp$zzk;",
        "Lcom/google/android/gms/internal/firebase_auth/zzp$zzk$zza;",
        ">;",
        "Lcom/google/android/gms/internal/firebase_auth/zzjp;"
    }
.end annotation


# static fields
.field private static final zzj:Lcom/google/android/gms/internal/firebase_auth/zzp$zzk;

.field private static volatile zzk:Lcom/google/android/gms/internal/firebase_auth/zzjx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase_auth/zzjx<",
            "Lcom/google/android/gms/internal/firebase_auth/zzp$zzk;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:I

.field private zzd:Ljava/lang/String;

.field private zze:Ljava/lang/String;

.field private zzf:Ljava/lang/String;

.field private zzg:I

.field private zzh:Lcom/google/android/gms/internal/firebase_auth/zzr;

.field private zzi:B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 40
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzk;-><init>()V

    .line 41
    sput-object v0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzk;->zzj:Lcom/google/android/gms/internal/firebase_auth/zzp$zzk;

    .line 42
    const-class v1, Lcom/google/android/gms/internal/firebase_auth/zzp$zzk;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/firebase_auth/zzif;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/firebase_auth/zzif;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_auth/zzif;-><init>()V

    const/4 v0, 0x2

    .line 2
    iput-byte v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzk;->zzi:B

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzk;->zzd:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzk;->zze:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzk;->zzf:Ljava/lang/String;

    return-void
.end method

.method public static zzf()Lcom/google/android/gms/internal/firebase_auth/zzjx;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/firebase_auth/zzjx<",
            "Lcom/google/android/gms/internal/firebase_auth/zzp$zzk;",
            ">;"
        }
    .end annotation

    .line 34
    sget-object v0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzk;->zzj:Lcom/google/android/gms/internal/firebase_auth/zzp$zzk;

    .line 35
    sget v1, Lcom/google/android/gms/internal/firebase_auth/zzif$zzf;->zzg:I

    const/4 v2, 0x0

    .line 36
    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/firebase_auth/zzif;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 37
    check-cast v0, Lcom/google/android/gms/internal/firebase_auth/zzjx;

    return-object v0
.end method

.method static synthetic zzg()Lcom/google/android/gms/internal/firebase_auth/zzp$zzk;
    .registers 1

    .line 39
    sget-object v0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzk;->zzj:Lcom/google/android/gms/internal/firebase_auth/zzp$zzk;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    .line 13
    sget-object p3, Lcom/google/android/gms/internal/firebase_auth/zzo;->zza:[I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    aget p1, p3, p1

    const/4 p3, 0x0

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_78

    .line 33
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_11
    if-nez p2, :cond_14

    goto :goto_15

    :cond_14
    const/4 p3, 0x1

    :goto_15
    int-to-byte p1, p3

    .line 31
    iput-byte p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzk;->zzi:B

    return-object v1

    .line 30
    :pswitch_19
    iget-byte p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzk;->zzi:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 21
    :pswitch_20
    sget-object p1, Lcom/google/android/gms/internal/firebase_auth/zzp$zzk;->zzk:Lcom/google/android/gms/internal/firebase_auth/zzjx;

    if-nez p1, :cond_39

    .line 23
    const-class p2, Lcom/google/android/gms/internal/firebase_auth/zzp$zzk;

    monitor-enter p2

    .line 24
    :try_start_27
    sget-object p1, Lcom/google/android/gms/internal/firebase_auth/zzp$zzk;->zzk:Lcom/google/android/gms/internal/firebase_auth/zzjx;

    if-nez p1, :cond_34

    .line 26
    new-instance p1, Lcom/google/android/gms/internal/firebase_auth/zzif$zzc;

    sget-object p3, Lcom/google/android/gms/internal/firebase_auth/zzp$zzk;->zzj:Lcom/google/android/gms/internal/firebase_auth/zzp$zzk;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/firebase_auth/zzif$zzc;-><init>(Lcom/google/android/gms/internal/firebase_auth/zzif;)V

    .line 27
    sput-object p1, Lcom/google/android/gms/internal/firebase_auth/zzp$zzk;->zzk:Lcom/google/android/gms/internal/firebase_auth/zzjx;

    .line 28
    :cond_34
    monitor-exit p2

    goto :goto_39

    :catchall_36
    move-exception p1

    monitor-exit p2
    :try_end_38
    .catchall {:try_start_27 .. :try_end_38} :catchall_36

    throw p1

    :cond_39
    :goto_39
    return-object p1

    .line 20
    :pswitch_3a
    sget-object p1, Lcom/google/android/gms/internal/firebase_auth/zzp$zzk;->zzj:Lcom/google/android/gms/internal/firebase_auth/zzp$zzk;

    return-object p1

    :pswitch_3d
    const/4 p1, 0x7

    .line 16
    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "zzc"

    aput-object p2, p1, p3

    const-string p2, "zzd"

    aput-object p2, p1, v0

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

    .line 17
    invoke-static {}, Lcom/google/android/gms/internal/firebase_auth/zzgj;->zzb()Lcom/google/android/gms/internal/firebase_auth/zzij;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "zzh"

    aput-object p3, p1, p2

    .line 19
    sget-object p2, Lcom/google/android/gms/internal/firebase_auth/zzp$zzk;->zzj:Lcom/google/android/gms/internal/firebase_auth/zzp$zzk;

    const-string p3, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0001\u0001\u1508\u0000\u0002\u1008\u0001\u0003\u1008\u0002\u0004\u100c\u0003\u0005\u1009\u0004"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzk;->zza(Lcom/google/android/gms/internal/firebase_auth/zzjn;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 15
    :pswitch_6c
    new-instance p1, Lcom/google/android/gms/internal/firebase_auth/zzp$zzk$zza;

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzk$zza;-><init>(Lcom/google/android/gms/internal/firebase_auth/zzo;)V

    return-object p1

    .line 14
    :pswitch_72
    new-instance p1, Lcom/google/android/gms/internal/firebase_auth/zzp$zzk;

    invoke-direct {p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzk;-><init>()V

    return-object p1

    :pswitch_data_78
    .packed-switch 0x1
        :pswitch_72
        :pswitch_6c
        :pswitch_3d
        :pswitch_3a
        :pswitch_20
        :pswitch_19
        :pswitch_11
    .end packed-switch
.end method

.method public final zza()Ljava/lang/String;
    .registers 2

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzk;->zze:Ljava/lang/String;

    return-object v0
.end method

.method public final zzb()Ljava/lang/String;
    .registers 2

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzk;->zzf:Ljava/lang/String;

    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/firebase_auth/zzgj;
    .registers 2

    .line 9
    iget v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzk;->zzg:I

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase_auth/zzgj;->zza(I)Lcom/google/android/gms/internal/firebase_auth/zzgj;

    move-result-object v0

    if-nez v0, :cond_a

    .line 10
    sget-object v0, Lcom/google/android/gms/internal/firebase_auth/zzgj;->zza:Lcom/google/android/gms/internal/firebase_auth/zzgj;

    :cond_a
    return-object v0
.end method

.method public final zzd()Z
    .registers 2

    .line 11
    iget v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzk;->zzc:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final zze()Lcom/google/android/gms/internal/firebase_auth/zzr;
    .registers 2

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzk;->zzh:Lcom/google/android/gms/internal/firebase_auth/zzr;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/google/android/gms/internal/firebase_auth/zzr;->zzf()Lcom/google/android/gms/internal/firebase_auth/zzr;

    move-result-object v0

    :cond_8
    return-object v0
.end method
