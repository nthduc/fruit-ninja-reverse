.class final Lcom/google/android/gms/internal/firebase_auth/zzbt;
.super Lcom/google/android/gms/internal/firebase_auth/zzbg;
.source "com.google.firebase:firebase-auth@@19.3.1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase_auth/zzbg<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final transient zza:[Ljava/lang/Object;

.field private final transient zzb:I

.field private final transient zzc:I


# direct methods
.method constructor <init>([Ljava/lang/Object;II)V
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_auth/zzbg;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzbt;->zza:[Ljava/lang/Object;

    .line 3
    iput p2, p0, Lcom/google/android/gms/internal/firebase_auth/zzbt;->zzb:I

    .line 4
    iput p3, p0, Lcom/google/android/gms/internal/firebase_auth/zzbt;->zzc:I

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .registers 4

    .line 6
    iget v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzbt;->zzc:I

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/firebase_auth/zzav;->zza(II)I

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzbt;->zza:[Ljava/lang/Object;

    mul-int/lit8 p1, p1, 0x2

    iget v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzbt;->zzb:I

    add-int/2addr p1, v1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final size()I
    .registers 2

    .line 8
    iget v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzbt;->zzc:I

    return v0
.end method
