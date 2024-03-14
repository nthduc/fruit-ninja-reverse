.class final Lcom/google/android/gms/internal/firebase_auth/zzaq;
.super Lcom/google/android/gms/internal/firebase_auth/zzam;
.source "com.google.firebase:firebase-auth@@19.3.1"


# instance fields
.field private final zza:Ljava/util/regex/Matcher;


# direct methods
.method constructor <init>(Ljava/util/regex/Matcher;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_auth/zzam;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase_auth/zzav;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/regex/Matcher;

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzaq;->zza:Ljava/util/regex/Matcher;

    return-void
.end method


# virtual methods
.method public final zza()Z
    .registers 2

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzaq;->zza:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method public final zza(I)Z
    .registers 3

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzaq;->zza:Ljava/util/regex/Matcher;

    invoke-virtual {v0, p1}, Ljava/util/regex/Matcher;->find(I)Z

    move-result p1

    return p1
.end method

.method public final zzb()I
    .registers 2

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzaq;->zza:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    return v0
.end method

.method public final zzc()I
    .registers 2

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzaq;->zza:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v0

    return v0
.end method
