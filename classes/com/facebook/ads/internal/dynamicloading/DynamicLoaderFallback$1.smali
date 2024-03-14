.class Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback$1;
.super Ljava/lang/Object;
.source "DynamicLoaderFallback.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback;->makeFallbackLoader()Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$apiProxyToAdMap:Ljava/util/Map;

.field final synthetic val$buildLoadConfigMethods:Ljava/util/List;

.field final synthetic val$createApiMethods:Ljava/util/List;

.field final synthetic val$loadConfigBuilderProxyToApiMap:Ljava/util/Map;

.field final synthetic val$loadMethods:Ljava/util/List;

.field final synthetic val$loadWithConfigMethods:Ljava/util/List;

.field final synthetic val$nativeAdCreateMethod:Ljava/lang/reflect/Method;

.field final synthetic val$nativeBannerAdCreateMethod:Ljava/lang/reflect/Method;

.field final synthetic val$withListenerMethods:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    .registers 10

    .line 151
    iput-object p1, p0, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback$1;->val$loadMethods:Ljava/util/List;

    iput-object p2, p0, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback$1;->val$apiProxyToAdMap:Ljava/util/Map;

    iput-object p3, p0, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback$1;->val$loadWithConfigMethods:Ljava/util/List;

    iput-object p4, p0, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback$1;->val$withListenerMethods:Ljava/util/List;

    iput-object p5, p0, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback$1;->val$loadConfigBuilderProxyToApiMap:Ljava/util/Map;

    iput-object p6, p0, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback$1;->val$buildLoadConfigMethods:Ljava/util/List;

    iput-object p7, p0, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback$1;->val$createApiMethods:Ljava/util/List;

    iput-object p8, p0, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback$1;->val$nativeAdCreateMethod:Ljava/lang/reflect/Method;

    iput-object p9, p0, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback$1;->val$nativeBannerAdCreateMethod:Ljava/lang/reflect/Method;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 155
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_67

    .line 156
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p3

    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5a

    .line 158
    iget-object p3, p0, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback$1;->val$loadMethods:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1e
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    .line 159
    # invokes: Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback;->equalsMethods(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)Z
    invoke-static {p2, v0}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback;->access$100(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 160
    iget-object v0, p0, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback$1;->val$apiProxyToAdMap:Ljava/util/Map;

    # invokes: Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback;->reportError(Ljava/lang/Object;Ljava/util/Map;)Z
    invoke-static {p1, v0}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback;->access$200(Ljava/lang/Object;Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 164
    :cond_38
    iget-object p3, p0, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback$1;->val$loadWithConfigMethods:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_3e
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_58

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    .line 165
    # invokes: Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback;->equalsMethods(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)Z
    invoke-static {p2, v0}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback;->access$100(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 166
    iget-object v0, p0, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback$1;->val$apiProxyToAdMap:Ljava/util/Map;

    # invokes: Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback;->reportError(Ljava/lang/Object;Ljava/util/Map;)Z
    invoke-static {p1, v0}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback;->access$200(Ljava/lang/Object;Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_3e

    :cond_58
    const/4 p1, 0x0

    return-object p1

    .line 172
    :cond_5a
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 176
    :cond_67
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    const-class v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_76

    const-string p1, ""

    return-object p1

    .line 183
    :cond_76
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v3

    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8c

    move-object v0, p1

    goto :goto_9e

    .line 186
    :cond_8c
    const-class v0, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback;

    .line 188
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Class;

    .line 189
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v2

    .line 187
    invoke-static {v0, v3, p0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    .line 193
    :goto_9e
    iget-object v3, p0, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback$1;->val$withListenerMethods:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_a4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Method;

    .line 194
    # invokes: Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback;->equalsMethods(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)Z
    invoke-static {p2, v4}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback;->access$100(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)Z

    move-result v4

    if-eqz v4, :cond_a4

    .line 195
    # getter for: Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback;->sApiProxyToAdListenersMap:Ljava/util/WeakHashMap;
    invoke-static {}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback;->access$300()Ljava/util/WeakHashMap;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback$1;->val$loadConfigBuilderProxyToApiMap:Ljava/util/Map;

    .line 196
    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    aget-object v5, p3, v2

    check-cast v5, Lcom/facebook/ads/AdListener;

    .line 195
    invoke-virtual {v3, v4, v5}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    :cond_c7
    iget-object v3, p0, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback$1;->val$buildLoadConfigMethods:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_cd
    :goto_cd
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Method;

    .line 202
    # invokes: Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback;->equalsMethods(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)Z
    invoke-static {p2, v4}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback;->access$100(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)Z

    move-result v4

    if-eqz v4, :cond_cd

    .line 204
    iget-object v4, p0, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback$1;->val$loadConfigBuilderProxyToApiMap:Ljava/util/Map;

    invoke-interface {v4, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_cd

    .line 208
    :cond_e5
    iget-object p1, p0, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback$1;->val$createApiMethods:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_eb
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_111

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Method;

    .line 209
    # invokes: Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback;->equalsMethods(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)Z
    invoke-static {p2, v3}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback;->access$100(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)Z

    move-result v3

    if-eqz v3, :cond_eb

    .line 211
    array-length v3, p3

    const/4 v4, 0x0

    :goto_ff
    if-ge v4, v3, :cond_eb

    aget-object v5, p3, v4

    .line 212
    instance-of v6, v5, Lcom/facebook/ads/Ad;

    if-eqz v6, :cond_10e

    .line 213
    iget-object v6, p0, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback$1;->val$apiProxyToAdMap:Ljava/util/Map;

    check-cast v5, Lcom/facebook/ads/Ad;

    invoke-interface {v6, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10e
    add-int/lit8 v4, v4, 0x1

    goto :goto_ff

    .line 219
    :cond_111
    iget-object p1, p0, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback$1;->val$nativeAdCreateMethod:Ljava/lang/reflect/Method;

    # invokes: Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback;->equalsMethods(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)Z
    invoke-static {p2, p1}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback;->access$100(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)Z

    move-result p1

    if-eqz p1, :cond_124

    .line 220
    iget-object p1, p0, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback$1;->val$apiProxyToAdMap:Ljava/util/Map;

    aget-object v3, p3, v1

    aget-object v4, p3, v2

    check-cast v4, Lcom/facebook/ads/Ad;

    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    :cond_124
    iget-object p1, p0, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback$1;->val$nativeBannerAdCreateMethod:Ljava/lang/reflect/Method;

    # invokes: Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback;->equalsMethods(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)Z
    invoke-static {p2, p1}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback;->access$100(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)Z

    move-result p1

    if-eqz p1, :cond_137

    .line 224
    iget-object p1, p0, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback$1;->val$apiProxyToAdMap:Ljava/util/Map;

    aget-object p2, p3, v1

    aget-object p3, p3, v2

    check-cast p3, Lcom/facebook/ads/Ad;

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_137
    return-object v0
.end method
