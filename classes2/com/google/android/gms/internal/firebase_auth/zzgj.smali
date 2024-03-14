.class public final enum Lcom/google/android/gms/internal/firebase_auth/zzgj;
.super Ljava/lang/Enum;
.source "com.google.firebase:firebase-auth@@19.3.1"

# interfaces
.implements Lcom/google/android/gms/internal/firebase_auth/zzih;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/firebase_auth/zzgj;",
        ">;",
        "Lcom/google/android/gms/internal/firebase_auth/zzih;"
    }
.end annotation


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/firebase_auth/zzgj;

.field public static final enum zzb:Lcom/google/android/gms/internal/firebase_auth/zzgj;

.field public static final enum zzc:Lcom/google/android/gms/internal/firebase_auth/zzgj;

.field public static final enum zzd:Lcom/google/android/gms/internal/firebase_auth/zzgj;

.field public static final enum zze:Lcom/google/android/gms/internal/firebase_auth/zzgj;

.field public static final enum zzf:Lcom/google/android/gms/internal/firebase_auth/zzgj;

.field public static final enum zzg:Lcom/google/android/gms/internal/firebase_auth/zzgj;

.field private static final enum zzh:Lcom/google/android/gms/internal/firebase_auth/zzgj;

.field private static final enum zzi:Lcom/google/android/gms/internal/firebase_auth/zzgj;

.field private static final zzj:Lcom/google/android/gms/internal/firebase_auth/zzik;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase_auth/zzik<",
            "Lcom/google/android/gms/internal/firebase_auth/zzgj;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic zzl:[Lcom/google/android/gms/internal/firebase_auth/zzgj;


# instance fields
.field private final zzk:I


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .line 28
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzgj;

    const/4 v1, 0x0

    const-string v2, "OOB_REQ_TYPE_UNSPECIFIED"

    invoke-direct {v0, v2, v1, v1}, Lcom/google/android/gms/internal/firebase_auth/zzgj;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/firebase_auth/zzgj;->zza:Lcom/google/android/gms/internal/firebase_auth/zzgj;

    .line 29
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzgj;

    const/4 v2, 0x1

    const-string v3, "PASSWORD_RESET"

    invoke-direct {v0, v3, v2, v2}, Lcom/google/android/gms/internal/firebase_auth/zzgj;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/firebase_auth/zzgj;->zzb:Lcom/google/android/gms/internal/firebase_auth/zzgj;

    .line 30
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzgj;

    const/4 v3, 0x2

    const-string v4, "OLD_EMAIL_AGREE"

    invoke-direct {v0, v4, v3, v3}, Lcom/google/android/gms/internal/firebase_auth/zzgj;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/firebase_auth/zzgj;->zzh:Lcom/google/android/gms/internal/firebase_auth/zzgj;

    .line 31
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzgj;

    const/4 v4, 0x3

    const-string v5, "NEW_EMAIL_ACCEPT"

    invoke-direct {v0, v5, v4, v4}, Lcom/google/android/gms/internal/firebase_auth/zzgj;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/firebase_auth/zzgj;->zzi:Lcom/google/android/gms/internal/firebase_auth/zzgj;

    .line 32
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzgj;

    const/4 v5, 0x4

    const-string v6, "VERIFY_EMAIL"

    invoke-direct {v0, v6, v5, v5}, Lcom/google/android/gms/internal/firebase_auth/zzgj;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/firebase_auth/zzgj;->zzc:Lcom/google/android/gms/internal/firebase_auth/zzgj;

    .line 33
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzgj;

    const/4 v6, 0x5

    const-string v7, "RECOVER_EMAIL"

    invoke-direct {v0, v7, v6, v6}, Lcom/google/android/gms/internal/firebase_auth/zzgj;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/firebase_auth/zzgj;->zzd:Lcom/google/android/gms/internal/firebase_auth/zzgj;

    .line 34
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzgj;

    const/4 v7, 0x6

    const-string v8, "EMAIL_SIGNIN"

    invoke-direct {v0, v8, v7, v7}, Lcom/google/android/gms/internal/firebase_auth/zzgj;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/firebase_auth/zzgj;->zze:Lcom/google/android/gms/internal/firebase_auth/zzgj;

    .line 35
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzgj;

    const/4 v8, 0x7

    const-string v9, "VERIFY_AND_CHANGE_EMAIL"

    invoke-direct {v0, v9, v8, v8}, Lcom/google/android/gms/internal/firebase_auth/zzgj;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/firebase_auth/zzgj;->zzf:Lcom/google/android/gms/internal/firebase_auth/zzgj;

    .line 36
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzgj;

    const/16 v9, 0x8

    const-string v10, "REVERT_SECOND_FACTOR_ADDITION"

    invoke-direct {v0, v10, v9, v9}, Lcom/google/android/gms/internal/firebase_auth/zzgj;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/firebase_auth/zzgj;->zzg:Lcom/google/android/gms/internal/firebase_auth/zzgj;

    const/16 v0, 0x9

    .line 37
    new-array v0, v0, [Lcom/google/android/gms/internal/firebase_auth/zzgj;

    sget-object v10, Lcom/google/android/gms/internal/firebase_auth/zzgj;->zza:Lcom/google/android/gms/internal/firebase_auth/zzgj;

    aput-object v10, v0, v1

    sget-object v1, Lcom/google/android/gms/internal/firebase_auth/zzgj;->zzb:Lcom/google/android/gms/internal/firebase_auth/zzgj;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/firebase_auth/zzgj;->zzh:Lcom/google/android/gms/internal/firebase_auth/zzgj;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gms/internal/firebase_auth/zzgj;->zzi:Lcom/google/android/gms/internal/firebase_auth/zzgj;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gms/internal/firebase_auth/zzgj;->zzc:Lcom/google/android/gms/internal/firebase_auth/zzgj;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/gms/internal/firebase_auth/zzgj;->zzd:Lcom/google/android/gms/internal/firebase_auth/zzgj;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/gms/internal/firebase_auth/zzgj;->zze:Lcom/google/android/gms/internal/firebase_auth/zzgj;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/android/gms/internal/firebase_auth/zzgj;->zzf:Lcom/google/android/gms/internal/firebase_auth/zzgj;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/android/gms/internal/firebase_auth/zzgj;->zzg:Lcom/google/android/gms/internal/firebase_auth/zzgj;

    aput-object v1, v0, v9

    sput-object v0, Lcom/google/android/gms/internal/firebase_auth/zzgj;->zzl:[Lcom/google/android/gms/internal/firebase_auth/zzgj;

    .line 38
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzgl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_auth/zzgl;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase_auth/zzgj;->zzj:Lcom/google/android/gms/internal/firebase_auth/zzik;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 26
    iput p3, p0, Lcom/google/android/gms/internal/firebase_auth/zzgj;->zzk:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/firebase_auth/zzgj;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/firebase_auth/zzgj;->zzl:[Lcom/google/android/gms/internal/firebase_auth/zzgj;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/firebase_auth/zzgj;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/firebase_auth/zzgj;

    return-object v0
.end method

.method public static zza(I)Lcom/google/android/gms/internal/firebase_auth/zzgj;
    .registers 1

    packed-switch p0, :pswitch_data_20

    const/4 p0, 0x0

    return-object p0

    .line 12
    :pswitch_5
    sget-object p0, Lcom/google/android/gms/internal/firebase_auth/zzgj;->zzg:Lcom/google/android/gms/internal/firebase_auth/zzgj;

    return-object p0

    .line 11
    :pswitch_8
    sget-object p0, Lcom/google/android/gms/internal/firebase_auth/zzgj;->zzf:Lcom/google/android/gms/internal/firebase_auth/zzgj;

    return-object p0

    .line 10
    :pswitch_b
    sget-object p0, Lcom/google/android/gms/internal/firebase_auth/zzgj;->zze:Lcom/google/android/gms/internal/firebase_auth/zzgj;

    return-object p0

    .line 9
    :pswitch_e
    sget-object p0, Lcom/google/android/gms/internal/firebase_auth/zzgj;->zzd:Lcom/google/android/gms/internal/firebase_auth/zzgj;

    return-object p0

    .line 8
    :pswitch_11
    sget-object p0, Lcom/google/android/gms/internal/firebase_auth/zzgj;->zzc:Lcom/google/android/gms/internal/firebase_auth/zzgj;

    return-object p0

    .line 7
    :pswitch_14
    sget-object p0, Lcom/google/android/gms/internal/firebase_auth/zzgj;->zzi:Lcom/google/android/gms/internal/firebase_auth/zzgj;

    return-object p0

    .line 6
    :pswitch_17
    sget-object p0, Lcom/google/android/gms/internal/firebase_auth/zzgj;->zzh:Lcom/google/android/gms/internal/firebase_auth/zzgj;

    return-object p0

    .line 5
    :pswitch_1a
    sget-object p0, Lcom/google/android/gms/internal/firebase_auth/zzgj;->zzb:Lcom/google/android/gms/internal/firebase_auth/zzgj;

    return-object p0

    .line 4
    :pswitch_1d
    sget-object p0, Lcom/google/android/gms/internal/firebase_auth/zzgj;->zza:Lcom/google/android/gms/internal/firebase_auth/zzgj;

    return-object p0

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method public static zzb()Lcom/google/android/gms/internal/firebase_auth/zzij;
    .registers 1

    .line 14
    sget-object v0, Lcom/google/android/gms/internal/firebase_auth/zzgk;->zza:Lcom/google/android/gms/internal/firebase_auth/zzij;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 3

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 17
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 18
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " number="

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    iget v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzgj;->zzk:I

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " name="

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_auth/zzgj;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()I
    .registers 2

    .line 2
    iget v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzgj;->zzk:I

    return v0
.end method
