.class public final enum Lcom/google/android/gms/internal/firebase_auth/zzv;
.super Ljava/lang/Enum;
.source "com.google.firebase:firebase-auth@@19.3.1"

# interfaces
.implements Lcom/google/android/gms/internal/firebase_auth/zzih;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/firebase_auth/zzv;",
        ">;",
        "Lcom/google/android/gms/internal/firebase_auth/zzih;"
    }
.end annotation


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/firebase_auth/zzv;

.field public static final enum zzb:Lcom/google/android/gms/internal/firebase_auth/zzv;

.field public static final enum zzc:Lcom/google/android/gms/internal/firebase_auth/zzv;

.field public static final enum zzd:Lcom/google/android/gms/internal/firebase_auth/zzv;

.field public static final enum zze:Lcom/google/android/gms/internal/firebase_auth/zzv;

.field private static final enum zzf:Lcom/google/android/gms/internal/firebase_auth/zzv;

.field private static final enum zzg:Lcom/google/android/gms/internal/firebase_auth/zzv;

.field private static final zzh:Lcom/google/android/gms/internal/firebase_auth/zzik;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase_auth/zzik<",
            "Lcom/google/android/gms/internal/firebase_auth/zzv;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic zzj:[Lcom/google/android/gms/internal/firebase_auth/zzv;


# instance fields
.field private final zzi:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 26
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzv;

    const/4 v1, 0x0

    const-string v2, "USER_ATTRIBUTE_NAME_UNSPECIFIED"

    invoke-direct {v0, v2, v1, v1}, Lcom/google/android/gms/internal/firebase_auth/zzv;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/firebase_auth/zzv;->zza:Lcom/google/android/gms/internal/firebase_auth/zzv;

    .line 27
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzv;

    const/4 v2, 0x1

    const-string v3, "EMAIL"

    invoke-direct {v0, v3, v2, v2}, Lcom/google/android/gms/internal/firebase_auth/zzv;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/firebase_auth/zzv;->zzb:Lcom/google/android/gms/internal/firebase_auth/zzv;

    .line 28
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzv;

    const/4 v3, 0x2

    const-string v4, "DISPLAY_NAME"

    invoke-direct {v0, v4, v3, v3}, Lcom/google/android/gms/internal/firebase_auth/zzv;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/firebase_auth/zzv;->zzc:Lcom/google/android/gms/internal/firebase_auth/zzv;

    .line 29
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzv;

    const/4 v4, 0x3

    const-string v5, "PROVIDER"

    invoke-direct {v0, v5, v4, v4}, Lcom/google/android/gms/internal/firebase_auth/zzv;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/firebase_auth/zzv;->zzf:Lcom/google/android/gms/internal/firebase_auth/zzv;

    .line 30
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzv;

    const/4 v5, 0x4

    const-string v6, "PHOTO_URL"

    invoke-direct {v0, v6, v5, v5}, Lcom/google/android/gms/internal/firebase_auth/zzv;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/firebase_auth/zzv;->zzd:Lcom/google/android/gms/internal/firebase_auth/zzv;

    .line 31
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzv;

    const/4 v6, 0x5

    const-string v7, "PASSWORD"

    invoke-direct {v0, v7, v6, v6}, Lcom/google/android/gms/internal/firebase_auth/zzv;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/firebase_auth/zzv;->zze:Lcom/google/android/gms/internal/firebase_auth/zzv;

    .line 32
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzv;

    const/4 v7, 0x6

    const-string v8, "RAW_USER_INFO"

    invoke-direct {v0, v8, v7, v7}, Lcom/google/android/gms/internal/firebase_auth/zzv;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/firebase_auth/zzv;->zzg:Lcom/google/android/gms/internal/firebase_auth/zzv;

    const/4 v0, 0x7

    .line 33
    new-array v0, v0, [Lcom/google/android/gms/internal/firebase_auth/zzv;

    sget-object v8, Lcom/google/android/gms/internal/firebase_auth/zzv;->zza:Lcom/google/android/gms/internal/firebase_auth/zzv;

    aput-object v8, v0, v1

    sget-object v1, Lcom/google/android/gms/internal/firebase_auth/zzv;->zzb:Lcom/google/android/gms/internal/firebase_auth/zzv;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/firebase_auth/zzv;->zzc:Lcom/google/android/gms/internal/firebase_auth/zzv;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gms/internal/firebase_auth/zzv;->zzf:Lcom/google/android/gms/internal/firebase_auth/zzv;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gms/internal/firebase_auth/zzv;->zzd:Lcom/google/android/gms/internal/firebase_auth/zzv;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/gms/internal/firebase_auth/zzv;->zze:Lcom/google/android/gms/internal/firebase_auth/zzv;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/gms/internal/firebase_auth/zzv;->zzg:Lcom/google/android/gms/internal/firebase_auth/zzv;

    aput-object v1, v0, v7

    sput-object v0, Lcom/google/android/gms/internal/firebase_auth/zzv;->zzj:[Lcom/google/android/gms/internal/firebase_auth/zzv;

    .line 34
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_auth/zzx;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase_auth/zzv;->zzh:Lcom/google/android/gms/internal/firebase_auth/zzik;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 24
    iput p3, p0, Lcom/google/android/gms/internal/firebase_auth/zzv;->zzi:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/firebase_auth/zzv;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/firebase_auth/zzv;->zzj:[Lcom/google/android/gms/internal/firebase_auth/zzv;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/firebase_auth/zzv;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/firebase_auth/zzv;

    return-object v0
.end method

.method public static zza(I)Lcom/google/android/gms/internal/firebase_auth/zzv;
    .registers 1

    packed-switch p0, :pswitch_data_1a

    const/4 p0, 0x0

    return-object p0

    .line 10
    :pswitch_5
    sget-object p0, Lcom/google/android/gms/internal/firebase_auth/zzv;->zzg:Lcom/google/android/gms/internal/firebase_auth/zzv;

    return-object p0

    .line 9
    :pswitch_8
    sget-object p0, Lcom/google/android/gms/internal/firebase_auth/zzv;->zze:Lcom/google/android/gms/internal/firebase_auth/zzv;

    return-object p0

    .line 8
    :pswitch_b
    sget-object p0, Lcom/google/android/gms/internal/firebase_auth/zzv;->zzd:Lcom/google/android/gms/internal/firebase_auth/zzv;

    return-object p0

    .line 7
    :pswitch_e
    sget-object p0, Lcom/google/android/gms/internal/firebase_auth/zzv;->zzf:Lcom/google/android/gms/internal/firebase_auth/zzv;

    return-object p0

    .line 6
    :pswitch_11
    sget-object p0, Lcom/google/android/gms/internal/firebase_auth/zzv;->zzc:Lcom/google/android/gms/internal/firebase_auth/zzv;

    return-object p0

    .line 5
    :pswitch_14
    sget-object p0, Lcom/google/android/gms/internal/firebase_auth/zzv;->zzb:Lcom/google/android/gms/internal/firebase_auth/zzv;

    return-object p0

    .line 4
    :pswitch_17
    sget-object p0, Lcom/google/android/gms/internal/firebase_auth/zzv;->zza:Lcom/google/android/gms/internal/firebase_auth/zzv;

    return-object p0

    :pswitch_data_1a
    .packed-switch 0x0
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

    .line 12
    sget-object v0, Lcom/google/android/gms/internal/firebase_auth/zzw;->zza:Lcom/google/android/gms/internal/firebase_auth/zzij;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 3

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 15
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 16
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " number="

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    iget v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzv;->zzi:I

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " name="

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_auth/zzv;->name()Ljava/lang/String;

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
    iget v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzv;->zzi:I

    return v0
.end method
