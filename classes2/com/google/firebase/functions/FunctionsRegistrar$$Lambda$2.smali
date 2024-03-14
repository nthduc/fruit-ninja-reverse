.class final synthetic Lcom/google/firebase/functions/FunctionsRegistrar$$Lambda$2;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-functions@@19.0.2"

# interfaces
.implements Lcom/google/firebase/components/ComponentFactory;


# static fields
.field private static final instance:Lcom/google/firebase/functions/FunctionsRegistrar$$Lambda$2;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/firebase/functions/FunctionsRegistrar$$Lambda$2;

    invoke-direct {v0}, Lcom/google/firebase/functions/FunctionsRegistrar$$Lambda$2;-><init>()V

    sput-object v0, Lcom/google/firebase/functions/FunctionsRegistrar$$Lambda$2;->instance:Lcom/google/firebase/functions/FunctionsRegistrar$$Lambda$2;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Lcom/google/firebase/components/ComponentFactory;
    .registers 1

    sget-object v0, Lcom/google/firebase/functions/FunctionsRegistrar$$Lambda$2;->instance:Lcom/google/firebase/functions/FunctionsRegistrar$$Lambda$2;

    return-object v0
.end method


# virtual methods
.method public create(Lcom/google/firebase/components/ComponentContainer;)Ljava/lang/Object;
    .registers 2

    invoke-static {p1}, Lcom/google/firebase/functions/FunctionsRegistrar;->lambda$getComponents$1(Lcom/google/firebase/components/ComponentContainer;)Lcom/google/firebase/functions/FunctionsMultiResourceComponent;

    move-result-object p1

    return-object p1
.end method
