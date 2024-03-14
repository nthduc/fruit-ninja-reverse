.class public final enum Lcom/google/android/gms/internal/ads/zzent$zza$zzc;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeke;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzent$zza;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "zzc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/ads/zzent$zza$zzc;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzeke;"
    }
.end annotation


# static fields
.field private static final zzes:Lcom/google/android/gms/internal/ads/zzekd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzekd<",
            "Lcom/google/android/gms/internal/ads/zzent$zza$zzc;",
            ">;"
        }
    .end annotation
.end field

.field private static final enum zziqo:Lcom/google/android/gms/internal/ads/zzent$zza$zzc;

.field private static final enum zziqp:Lcom/google/android/gms/internal/ads/zzent$zza$zzc;

.field private static final enum zziqq:Lcom/google/android/gms/internal/ads/zzent$zza$zzc;

.field private static final enum zziqr:Lcom/google/android/gms/internal/ads/zzent$zza$zzc;

.field private static final enum zziqs:Lcom/google/android/gms/internal/ads/zzent$zza$zzc;

.field private static final synthetic zziqt:[Lcom/google/android/gms/internal/ads/zzent$zza$zzc;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 24
    new-instance v0, Lcom/google/android/gms/internal/ads/zzent$zza$zzc;

    const/4 v1, 0x0

    const-string v2, "SAFE"

    invoke-direct {v0, v2, v1, v1}, Lcom/google/android/gms/internal/ads/zzent$zza$zzc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzent$zza$zzc;->zziqo:Lcom/google/android/gms/internal/ads/zzent$zza$zzc;

    .line 25
    new-instance v0, Lcom/google/android/gms/internal/ads/zzent$zza$zzc;

    const/4 v2, 0x1

    const-string v3, "DANGEROUS"

    invoke-direct {v0, v3, v2, v2}, Lcom/google/android/gms/internal/ads/zzent$zza$zzc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzent$zza$zzc;->zziqp:Lcom/google/android/gms/internal/ads/zzent$zza$zzc;

    .line 26
    new-instance v0, Lcom/google/android/gms/internal/ads/zzent$zza$zzc;

    const/4 v3, 0x2

    const-string v4, "UNKNOWN"

    invoke-direct {v0, v4, v3, v3}, Lcom/google/android/gms/internal/ads/zzent$zza$zzc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzent$zza$zzc;->zziqq:Lcom/google/android/gms/internal/ads/zzent$zza$zzc;

    .line 27
    new-instance v0, Lcom/google/android/gms/internal/ads/zzent$zza$zzc;

    const/4 v4, 0x3

    const-string v5, "POTENTIALLY_UNWANTED"

    invoke-direct {v0, v5, v4, v4}, Lcom/google/android/gms/internal/ads/zzent$zza$zzc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzent$zza$zzc;->zziqr:Lcom/google/android/gms/internal/ads/zzent$zza$zzc;

    .line 28
    new-instance v0, Lcom/google/android/gms/internal/ads/zzent$zza$zzc;

    const/4 v5, 0x4

    const-string v6, "DANGEROUS_HOST"

    invoke-direct {v0, v6, v5, v5}, Lcom/google/android/gms/internal/ads/zzent$zza$zzc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzent$zza$zzc;->zziqs:Lcom/google/android/gms/internal/ads/zzent$zza$zzc;

    const/4 v0, 0x5

    .line 29
    new-array v0, v0, [Lcom/google/android/gms/internal/ads/zzent$zza$zzc;

    sget-object v6, Lcom/google/android/gms/internal/ads/zzent$zza$zzc;->zziqo:Lcom/google/android/gms/internal/ads/zzent$zza$zzc;

    aput-object v6, v0, v1

    sget-object v1, Lcom/google/android/gms/internal/ads/zzent$zza$zzc;->zziqp:Lcom/google/android/gms/internal/ads/zzent$zza$zzc;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/ads/zzent$zza$zzc;->zziqq:Lcom/google/android/gms/internal/ads/zzent$zza$zzc;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gms/internal/ads/zzent$zza$zzc;->zziqr:Lcom/google/android/gms/internal/ads/zzent$zza$zzc;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gms/internal/ads/zzent$zza$zzc;->zziqs:Lcom/google/android/gms/internal/ads/zzent$zza$zzc;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/gms/internal/ads/zzent$zza$zzc;->zziqt:[Lcom/google/android/gms/internal/ads/zzent$zza$zzc;

    .line 30
    new-instance v0, Lcom/google/android/gms/internal/ads/zzenx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzenx;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzent$zza$zzc;->zzes:Lcom/google/android/gms/internal/ads/zzekd;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 22
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzent$zza$zzc;->value:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/zzent$zza$zzc;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzent$zza$zzc;->zziqt:[Lcom/google/android/gms/internal/ads/zzent$zza$zzc;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/zzent$zza$zzc;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/zzent$zza$zzc;

    return-object v0
.end method

.method public static zzht(I)Lcom/google/android/gms/internal/ads/zzent$zza$zzc;
    .registers 2

    if-eqz p0, :cond_1c

    const/4 v0, 0x1

    if-eq p0, v0, :cond_19

    const/4 v0, 0x2

    if-eq p0, v0, :cond_16

    const/4 v0, 0x3

    if-eq p0, v0, :cond_13

    const/4 v0, 0x4

    if-eq p0, v0, :cond_10

    const/4 p0, 0x0

    return-object p0

    .line 8
    :cond_10
    sget-object p0, Lcom/google/android/gms/internal/ads/zzent$zza$zzc;->zziqs:Lcom/google/android/gms/internal/ads/zzent$zza$zzc;

    return-object p0

    .line 7
    :cond_13
    sget-object p0, Lcom/google/android/gms/internal/ads/zzent$zza$zzc;->zziqr:Lcom/google/android/gms/internal/ads/zzent$zza$zzc;

    return-object p0

    .line 6
    :cond_16
    sget-object p0, Lcom/google/android/gms/internal/ads/zzent$zza$zzc;->zziqq:Lcom/google/android/gms/internal/ads/zzent$zza$zzc;

    return-object p0

    .line 5
    :cond_19
    sget-object p0, Lcom/google/android/gms/internal/ads/zzent$zza$zzc;->zziqp:Lcom/google/android/gms/internal/ads/zzent$zza$zzc;

    return-object p0

    .line 4
    :cond_1c
    sget-object p0, Lcom/google/android/gms/internal/ads/zzent$zza$zzc;->zziqo:Lcom/google/android/gms/internal/ads/zzent$zza$zzc;

    return-object p0
.end method

.method public static zzw()Lcom/google/android/gms/internal/ads/zzekg;
    .registers 1

    .line 10
    sget-object v0, Lcom/google/android/gms/internal/ads/zzenw;->zzeu:Lcom/google/android/gms/internal/ads/zzekg;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 3

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 13
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 14
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " number="

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzent$zza$zzc;->value:I

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " name="

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzent$zza$zzc;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzv()I
    .registers 2

    .line 2
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzent$zza$zzc;->value:I

    return v0
.end method
