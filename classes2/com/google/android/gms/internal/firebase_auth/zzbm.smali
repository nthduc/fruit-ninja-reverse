.class final Lcom/google/android/gms/internal/firebase_auth/zzbm;
.super Lcom/google/android/gms/internal/firebase_auth/zzbg;
.source "com.google.firebase:firebase-auth@@19.3.1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/firebase_auth/zzbg<",
        "TE;>;"
    }
.end annotation


# static fields
.field static final zza:Lcom/google/android/gms/internal/firebase_auth/zzbg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase_auth/zzbg<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final transient zzb:[Ljava/lang/Object;

.field private final transient zzc:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 13
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzbm;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/firebase_auth/zzbm;-><init>([Ljava/lang/Object;I)V

    sput-object v0, Lcom/google/android/gms/internal/firebase_auth/zzbm;->zza:Lcom/google/android/gms/internal/firebase_auth/zzbg;

    return-void
.end method

.method constructor <init>([Ljava/lang/Object;I)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_auth/zzbg;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzbm;->zzb:[Ljava/lang/Object;

    .line 3
    iput p2, p0, Lcom/google/android/gms/internal/firebase_auth/zzbm;->zzc:I

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 11
    iget v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzbm;->zzc:I

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/firebase_auth/zzav;->zza(II)I

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzbm;->zzb:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final size()I
    .registers 2

    .line 5
    iget v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzbm;->zzc:I

    return v0
.end method

.method final zza([Ljava/lang/Object;I)I
    .registers 6

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzbm;->zzb:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzbm;->zzc:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10
    iget p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzbm;->zzc:I

    add-int/2addr p2, p1

    return p2
.end method

.method final zzd()[Ljava/lang/Object;
    .registers 2

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzbm;->zzb:[Ljava/lang/Object;

    return-object v0
.end method

.method final zze()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method final zzf()I
    .registers 2

    .line 8
    iget v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzbm;->zzc:I

    return v0
.end method
