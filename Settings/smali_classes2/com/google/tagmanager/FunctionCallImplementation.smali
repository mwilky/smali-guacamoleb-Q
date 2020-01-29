.class abstract Lcom/google/tagmanager/FunctionCallImplementation;
.super Ljava/lang/Object;
.source "FunctionCallImplementation.java"


# static fields
.field private static final FUNCTION_KEY:Ljava/lang/String; = "function"


# instance fields
.field private final mFunctionId:Ljava/lang/String;

.field private final mRequiredKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/tagmanager/FunctionCallImplementation;->mFunctionId:Ljava/lang/String;

    new-instance v0, Ljava/util/HashSet;

    array-length v1, p2

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/google/tagmanager/FunctionCallImplementation;->mRequiredKeys:Ljava/util/Set;

    move-object v0, p2

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/google/tagmanager/FunctionCallImplementation;->mRequiredKeys:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static getFunctionKey()Ljava/lang/String;
    .locals 1

    const-string v0, "function"

    return-object v0
.end method


# virtual methods
.method public abstract evaluate(Ljava/util/Map;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            ">;)",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;"
        }
    .end annotation
.end method

.method public getInstanceFunctionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/tagmanager/FunctionCallImplementation;->mFunctionId:Ljava/lang/String;

    return-object v0
.end method

.method public getRequiredKeys()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/tagmanager/FunctionCallImplementation;->mRequiredKeys:Ljava/util/Set;

    return-object v0
.end method

.method hasRequiredKeys(Ljava/util/Set;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/tagmanager/FunctionCallImplementation;->mRequiredKeys:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public abstract isCacheable()Z
.end method
