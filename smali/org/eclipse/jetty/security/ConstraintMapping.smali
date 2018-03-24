.class public Lorg/eclipse/jetty/security/ConstraintMapping;
.super Ljava/lang/Object;
.source "ConstraintMapping.java"


# instance fields
.field _constraint:Lorg/eclipse/jetty/util/security/Constraint;

.field _method:Ljava/lang/String;

.field _methodOmissions:[Ljava/lang/String;

.field _pathSpec:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getConstraint()Lorg/eclipse/jetty/util/security/Constraint;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lorg/eclipse/jetty/security/ConstraintMapping;->_constraint:Lorg/eclipse/jetty/util/security/Constraint;

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lorg/eclipse/jetty/security/ConstraintMapping;->_method:Ljava/lang/String;

    return-object v0
.end method

.method public getMethodOmissions()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lorg/eclipse/jetty/security/ConstraintMapping;->_methodOmissions:[Ljava/lang/String;

    return-object v0
.end method

.method public getPathSpec()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lorg/eclipse/jetty/security/ConstraintMapping;->_pathSpec:Ljava/lang/String;

    return-object v0
.end method

.method public setConstraint(Lorg/eclipse/jetty/util/security/Constraint;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lorg/eclipse/jetty/security/ConstraintMapping;->_constraint:Lorg/eclipse/jetty/util/security/Constraint;

    .line 48
    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lorg/eclipse/jetty/security/ConstraintMapping;->_method:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setMethodOmissions([Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lorg/eclipse/jetty/security/ConstraintMapping;->_methodOmissions:[Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setPathSpec(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lorg/eclipse/jetty/security/ConstraintMapping;->_pathSpec:Ljava/lang/String;

    .line 84
    return-void
.end method
