.class final Lcom/squareup/wire/BuilderAdapter;
.super Ljava/lang/Object;
.source "BuilderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lcom/squareup/wire/Message$Builder;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final ORDER_BY_FIELD_NAME:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field private static final SUFFIX_LENGTH:I


# instance fields
.field private final requiredFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-string v0, "$Builder"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/squareup/wire/BuilderAdapter;->SUFFIX_LENGTH:I

    .line 34
    new-instance v0, Lcom/squareup/wire/BuilderAdapter$1;

    invoke-direct {v0}, Lcom/squareup/wire/BuilderAdapter$1;-><init>()V

    sput-object v0, Lcom/squareup/wire/BuilderAdapter;->ORDER_BY_FIELD_NAME:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TB;>;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/squareup/wire/BuilderAdapter;,"Lcom/squareup/wire/BuilderAdapter<TB;>;"
    .local p1, builderType:Ljava/lang/Class;,"Ljava/lang/Class<TB;>;"
    const/4 v6, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/squareup/wire/BuilderAdapter;->requiredFields:Ljava/util/List;

    .line 44
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 45
    .local v1, builderTypeName:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    sget v8, Lcom/squareup/wire/BuilderAdapter;->SUFFIX_LENGTH:I

    sub-int/2addr v7, v8

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 48
    .local v5, messageTypeName:Ljava/lang/String;
    :try_start_0
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 55
    .local v4, messageType:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/squareup/wire/Message;>;"
    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v7

    array-length v8, v7

    :goto_0
    if-ge v6, v8, :cond_1

    aget-object v3, v7, v6

    .line 56
    .local v3, field:Ljava/lang/reflect/Field;
    const-class v9, Lcom/squareup/wire/ProtoField;

    invoke-virtual {v3, v9}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/ProtoField;

    .line 57
    .local v0, annotation:Lcom/squareup/wire/ProtoField;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/squareup/wire/ProtoField;->label()Lcom/squareup/wire/Message$Label;

    move-result-object v9

    sget-object v10, Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;

    if-ne v9, v10, :cond_0

    .line 59
    :try_start_1
    iget-object v9, p0, Lcom/squareup/wire/BuilderAdapter;->requiredFields:Ljava/util/List;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1

    .line 55
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 49
    .end local v0           #annotation:Lcom/squareup/wire/ProtoField;
    .end local v3           #field:Ljava/lang/reflect/Field;
    .end local v4           #messageType:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/squareup/wire/Message;>;"
    :catch_0
    move-exception v2

    .line 50
    .local v2, e:Ljava/lang/ClassNotFoundException;
    new-instance v6, Ljava/lang/AssertionError;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No message class found for builder type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6

    .line 60
    .end local v2           #e:Ljava/lang/ClassNotFoundException;
    .restart local v0       #annotation:Lcom/squareup/wire/ProtoField;
    .restart local v3       #field:Ljava/lang/reflect/Field;
    .restart local v4       #messageType:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/squareup/wire/Message;>;"
    :catch_1
    move-exception v2

    .line 61
    .local v2, e:Ljava/lang/NoSuchFieldException;
    new-instance v6, Ljava/lang/AssertionError;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No builder field found for message field "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 62
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6

    .line 67
    .end local v0           #annotation:Lcom/squareup/wire/ProtoField;
    .end local v2           #e:Ljava/lang/NoSuchFieldException;
    .end local v3           #field:Ljava/lang/reflect/Field;
    :cond_1
    iget-object v6, p0, Lcom/squareup/wire/BuilderAdapter;->requiredFields:Ljava/util/List;

    sget-object v7, Lcom/squareup/wire/BuilderAdapter;->ORDER_BY_FIELD_NAME:Ljava/util/Comparator;

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 68
    return-void
.end method


# virtual methods
.method public checkRequiredFields(Lcom/squareup/wire/Message$Builder;)V
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Lcom/squareup/wire/Message$Builder;",
            ">(TB;)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, this:Lcom/squareup/wire/BuilderAdapter;,"Lcom/squareup/wire/BuilderAdapter<TB;>;"
    .local p1, builder:Lcom/squareup/wire/Message$Builder;,"TB;"
    const/4 v4, 0x0

    .line 72
    .local v4, sb:Ljava/lang/StringBuilder;
    const-string v3, ""

    .line 75
    .local v3, plural:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :try_start_0
    iget-object v7, p0, Lcom/squareup/wire/BuilderAdapter;->requiredFields:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v6

    .local v6, size:I
    move-object v5, v4

    .end local v4           #sb:Ljava/lang/StringBuilder;
    .local v5, sb:Ljava/lang/StringBuilder;
    :goto_0
    if-ge v2, v6, :cond_1

    .line 76
    :try_start_1
    iget-object v7, p0, Lcom/squareup/wire/BuilderAdapter;->requiredFields:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Field;

    .line 77
    .local v1, f:Ljava/lang/reflect/Field;
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_3

    .line 78
    if-nez v5, :cond_0

    .line 79
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    .line 84
    .end local v5           #sb:Ljava/lang/StringBuilder;
    .restart local v4       #sb:Ljava/lang/StringBuilder;
    :goto_1
    :try_start_2
    const-string v7, "\n  "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_1

    .line 75
    :goto_2
    add-int/lit8 v2, v2, 0x1

    move-object v5, v4

    .end local v4           #sb:Ljava/lang/StringBuilder;
    .restart local v5       #sb:Ljava/lang/StringBuilder;
    goto :goto_0

    .line 82
    :cond_0
    :try_start_3
    const-string v3, "s"

    move-object v4, v5

    .end local v5           #sb:Ljava/lang/StringBuilder;
    .restart local v4       #sb:Ljava/lang/StringBuilder;
    goto :goto_1

    .line 88
    .end local v1           #f:Ljava/lang/reflect/Field;
    .end local v4           #sb:Ljava/lang/StringBuilder;
    .restart local v5       #sb:Ljava/lang/StringBuilder;
    :cond_1
    if-eqz v5, :cond_2

    .line 89
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Required field"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " not set:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_0

    .line 91
    :catch_0
    move-exception v0

    move-object v4, v5

    .line 92
    .end local v5           #sb:Ljava/lang/StringBuilder;
    .end local v6           #size:I
    .local v0, e:Ljava/lang/IllegalAccessException;
    .restart local v4       #sb:Ljava/lang/StringBuilder;
    :goto_3
    new-instance v7, Ljava/lang/AssertionError;

    const-string v8, "Unable to access required fields"

    invoke-direct {v7, v8}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v7

    .line 94
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    .end local v4           #sb:Ljava/lang/StringBuilder;
    .restart local v5       #sb:Ljava/lang/StringBuilder;
    .restart local v6       #size:I
    :cond_2
    return-void

    .line 91
    .end local v5           #sb:Ljava/lang/StringBuilder;
    .end local v6           #size:I
    .restart local v4       #sb:Ljava/lang/StringBuilder;
    :catch_1
    move-exception v0

    goto :goto_3

    .end local v4           #sb:Ljava/lang/StringBuilder;
    .restart local v1       #f:Ljava/lang/reflect/Field;
    .restart local v5       #sb:Ljava/lang/StringBuilder;
    .restart local v6       #size:I
    :cond_3
    move-object v4, v5

    .end local v5           #sb:Ljava/lang/StringBuilder;
    .restart local v4       #sb:Ljava/lang/StringBuilder;
    goto :goto_2
.end method
