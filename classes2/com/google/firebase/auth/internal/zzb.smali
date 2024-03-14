.class public final Lcom/google/firebase/auth/internal/zzb;
.super Lcom/google/firebase/auth/ActionCodeEmailInfo;
.source "com.google.firebase:firebase-auth@@19.3.1"


# instance fields
.field private final zza:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/auth/ActionCodeEmailInfo;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzb;->email:Ljava/lang/String;

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzb;->zza:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getPreviousEmail()Ljava/lang/String;
    .registers 2

    .line 5
    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzb;->zza:Ljava/lang/String;

    return-object v0
.end method
