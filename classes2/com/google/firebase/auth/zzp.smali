.class final synthetic Lcom/google/firebase/auth/zzp;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@19.3.1"

# interfaces
.implements Lcom/google/firebase/components/ComponentFactory;


# static fields
.field static final zza:Lcom/google/firebase/components/ComponentFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/firebase/auth/zzp;

    invoke-direct {v0}, Lcom/google/firebase/auth/zzp;-><init>()V

    sput-object v0, Lcom/google/firebase/auth/zzp;->zza:Lcom/google/firebase/components/ComponentFactory;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Lcom/google/firebase/components/ComponentContainer;)Ljava/lang/Object;
    .registers 3

    .line 2
    const-class v0, Lcom/google/firebase/FirebaseApp;

    invoke-interface {p1, v0}, Lcom/google/firebase/components/ComponentContainer;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/FirebaseApp;

    .line 3
    new-instance v0, Lcom/google/firebase/auth/internal/zzl;

    invoke-direct {v0, p1}, Lcom/google/firebase/auth/internal/zzl;-><init>(Lcom/google/firebase/FirebaseApp;)V

    return-object v0
.end method
