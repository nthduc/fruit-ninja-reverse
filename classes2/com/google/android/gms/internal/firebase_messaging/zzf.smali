.class public final Lcom/google/android/gms/internal/firebase_messaging/zzf;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-iid@@20.1.7"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final enum zza:I = 0x1

.field public static final enum zzb:I = 0x2

.field private static final synthetic zzc:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x2

    .line 3
    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/google/android/gms/internal/firebase_messaging/zzf;->zzc:[I

    return-void

    nop

    :array_a
    .array-data 4
        0x1
        0x2
    .end array-data
.end method
