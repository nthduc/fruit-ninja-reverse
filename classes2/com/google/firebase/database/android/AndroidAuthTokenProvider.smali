.class public abstract Lcom/google/firebase/database/android/AndroidAuthTokenProvider;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-database@@19.3.0"

# interfaces
.implements Lcom/google/firebase/database/core/AuthTokenProvider;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/Exception;)Z
    .registers 1

    .line 27
    invoke-static {p0}, Lcom/google/firebase/database/android/AndroidAuthTokenProvider;->isUnauthenticatedUsage(Ljava/lang/Exception;)Z

    move-result p0

    return p0
.end method

.method public static forAuthenticatedAccess(Lcom/google/firebase/auth/internal/InternalAuthProvider;)Lcom/google/firebase/database/core/AuthTokenProvider;
    .registers 2
    .param p0    # Lcom/google/firebase/auth/internal/InternalAuthProvider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 31
    new-instance v0, Lcom/google/firebase/database/android/AndroidAuthTokenProvider$1;

    invoke-direct {v0, p0}, Lcom/google/firebase/database/android/AndroidAuthTokenProvider$1;-><init>(Lcom/google/firebase/auth/internal/InternalAuthProvider;)V

    return-object v0
.end method

.method public static forUnauthenticatedAccess()Lcom/google/firebase/database/core/AuthTokenProvider;
    .registers 1

    .line 68
    new-instance v0, Lcom/google/firebase/database/android/AndroidAuthTokenProvider$2;

    invoke-direct {v0}, Lcom/google/firebase/database/android/AndroidAuthTokenProvider$2;-><init>()V

    return-object v0
.end method

.method private static isUnauthenticatedUsage(Ljava/lang/Exception;)Z
    .registers 2

    .line 86
    instance-of v0, p0, Lcom/google/firebase/FirebaseApiNotAvailableException;

    if-nez v0, :cond_b

    instance-of p0, p0, Lcom/google/firebase/internal/api/FirebaseNoSignedInUserException;

    if-eqz p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    return p0

    :cond_b
    :goto_b
    const/4 p0, 0x1

    return p0
.end method